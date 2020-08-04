const { exec, sql, transaction } = require("mysqls");
const assetConfig = require("../config/assetConfig");

// 博客模块

const blogHandle = {
    //获取分类
    async getNewsCate() {
        const cateSql = sql.table("tb_cate").field("id,site_id,title,module_id,parent_id").where({ parent_id: 1, status: 1 }).order("taxis").select();
        return await exec(cateSql)
    },
    //获取置顶博客
    async getTopBlog(id) {
        try {
            const topSql = sql.table("tb_list").field("id,title,dateline,hits,attr").where({ attr: "h", status: 1, cate_id: id }).select();
            const topRes = await exec(topSql);
            const copyArr = [];
            if (topRes.length > 0) {
                const detailArr = [];
                topRes.forEach(value => {
                    detailArr.push({ id: value.id, _type: "or", _nexttype: 'or' })
                })

                const listDetailRes = await exec(sql.table("tb_list_1").where(detailArr).select());
                topRes.forEach(value => {
                    listDetailRes.forEach((innerValue, innerindex) => {
                        console.log(innerValue)
                        if (value.id == innerValue.id) {
                            copyArr.push(Object.assign(value, innerValue))
                        }
                    })
                })
                return copyArr;
            } else {
                return []
            }
        } catch (error) {
            console.log(error)
        }

    },
    // 调取置顶微博
    async getTopBlogByCateId(id) {
        const topMainSql = sql.table("tb_list").field("id,site_id,title,dateline,hits,attr").where({ status: 1, attr: "h", cate_id: id }).select();
        const ropRes = await exec(topMainSql);
        if (ropRes) {
            const sqlWhere = [];
            ropRes.forEach(value => {
                sqlWhere.push({ id: value.id, _type: "or", _nexttype: 'or' })
            })
            const subSql = sql.table("tb_list_1").where(sqlWhere).select();
            const subRes = await exec(subSql);
            const data = [];
            ropRes.forEach(value => {
                subRes.forEach(innerValue => {
                    if (value.id == innerValue.id) {
                        data.push(Object.assign(value, innerValue))
                    }
                })
            })
            return data;
        }
    },

    // 根据分类id分页获取博客
    async getBlogsByCateId(id, page, rows) {
        // 置顶操作
        const blogListSqlArr = [sql.table("tb_list").field("id,site_id,title,dateline,hits,attr").where({ cate_id: id, status: 1, attr: "" }).order("dateline desc").page(page, rows).select(), `SELECT COUNT(id)  FROM tb_list WHERE cate_id = ${id} AND status  = 1 AND attr = ""`];
        const resArr = await transaction(blogListSqlArr)
        const listMain = resArr[0];
        const total = resArr[1]
        if (listMain) {
            const sqlWhere = [];
            listMain.forEach(value => {
                sqlWhere.push({ id: value.id, _type: "or", _nexttype: 'or' })
            })
            const subSql = sql.table("tb_list_1").where(sqlWhere).select();
            const subRes = await exec(subSql);
            const data = [];
            listMain.forEach(value => {
                subRes.forEach(innerValue => {
                    if (value.id == innerValue.id) {
                        data.push(Object.assign(value, innerValue))
                    }
                })
            })
            return {
                data,
                total
            };
        } else {
            return {
                data: [],
                total: 0
            }
        }


    },

    // 根据文章id查询文章详情
    async getBlogDetailById(id) {
        const blogListSqlArr = [sql.table("tb_list").field("id,site_id,title,dateline,hits").where({ id, status: 1 }).order("dateline desc").select(), sql.table("tb_list_1").where({ id }).select()];
        const blogDetailResArr = await transaction(blogListSqlArr);
        if (blogDetailResArr[0] && blogDetailResArr[1]) {
            const copyObj = Object.assign(blogDetailResArr[0][0], blogDetailResArr[1][0])
            return copyObj
        } else {
            return false;
        }
    },

    //根据文章标题搜索博客
    async searchBlogByTitle(title) {
        const blogSearchList = sql.table("tb_list").field("id,title").where({ title: { like: `%${title}%` }, status: 1 }).select();
        const searchRes = await exec(blogSearchList)
        return searchRes
    },
    getTree(arr, pid) {
        // 生成评论数
        const itemArr = [];
        arr.forEach((value, index) => {
            if (value.parent_id == pid) {
                const newNode = {
                    id: value.id,
                    title: value.title,
                    parent_id: value.parent_id,
                    content: value.content,
                    ip: value.ip,
                    adm_content: value.adm_content,
                    addtime:value.addtime,
                    admin_id:value.admin_id,
                    showFlag:false
                }
                newNode.children = this.getTree(arr, value.id)
                itemArr.push(newNode)
            }
        })
        return itemArr;
    },
    //获取评论列表
    async getBlogCommentsList(id) {
        // id 博客的id
        const commentSql = sql.table("tb_reply").where([{ tid: id, _type: "or", _nexttype: 'or' },{ tid: 0, _type: "or", _nexttype: 'or' }]).select();
        const blogsAllCommentArr = await exec(commentSql);
        console.log(blogsAllCommentArr)
        const finalArr = this.getTree(blogsAllCommentArr, 0)
        return finalArr
    },

    // 增加hits点击数
    async addHits(id) {
        const backNumberSql = sql.table("tb_list").field("id,hits").where({ id }).select();
        let blogsHits = await exec(backNumberSql);
        const newsNumber = Number(blogsHits[0].hits) + 1;
        const updateSql = sql.table("tb_list").data({ hits: newsNumber }).where({ id }).update();
        const finres = await exec(updateSql);
        if (finres.affectedRows == 1) {
            return newsNumber
        } else {
            return 0
        }
    }

}

module.exports = blogHandle