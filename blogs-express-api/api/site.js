const { exec, sql, transaction } = require("mysqls");
const assetConfig = require("../config/assetConfig");
// 站点信息模块

const siteHandle = {
    async getMsg() {
        const siteSql = sql.table("tb_5").select();
        const siteMsg = await exec(siteSql);
        const siteMsgRes = siteMsg[0];
        const data = []
        if (siteMsgRes.thumb) {
            data.push({ id: siteMsgRes.thumb, _type: "or", _nexttype: 'or' })
        }
        if (siteMsgRes.paywechat) {
            data.push({ id: siteMsgRes.paywechat, _type: "or", _nexttype: 'or' })
        }
        if (siteMsgRes.payali) {
            data.push({ id: siteMsgRes.payali, _type: "or", _nexttype: 'or' })
        }

        if (data.length > 0) {
            // 拼接图片前缀
            const seachSql = sql.table("tb_res").field("filename").where(data).select();
            const picRes = await exec(seachSql);
            siteMsgRes.thumb = assetConfig.prefix + picRes[0].filename
            siteMsgRes.paywechat = assetConfig.prefix + picRes[1].filename
            siteMsgRes.payali = assetConfig.prefix + picRes[2].filename
            return siteMsgRes;
        } else {
            return siteMsgRes
        }


    },
    async getPictureIdArr() {
        const siteSql = sql.table("tb_4").field("img").select();
        return await exec(siteSql)
    },
    async getPictureList() {
        const imgArr = await this.getPictureIdArr();
        if (imgArr.length === 1) {
            const alongImgIdArr = imgArr[0].img.split(",");
            const sqlData = [];
            if (alongImgIdArr.length > 0) {
                alongImgIdArr.forEach((value, index) => {
                    sqlData.push({ id: value, _type: "or", _nexttype: 'or' })
                })
                const seachSql = sql.table("tb_res").field("filename").where(sqlData).select();
                const linkRes = await exec(seachSql);
                if (linkRes.length > 0) {
                    const newArr = linkRes.map((item) => {
                        item.filename = assetConfig.prefix + item.filename
                        return item.filename
                    })
                    return newArr
                } else {
                    return []
                }
            } else {
                return { msg: "相册只需要添加一条" }
            }

        } else {
            return { msg: "相册只需要添加一条" }
        }
    },
    // 增加历史访问人数
    async addHistory() {
        const historynumberSql = sql.table("tb_5").field("id,historynumber").select();
        let historyArr = await exec(historynumberSql);
        const siteObj = historyArr[0];
        const newsNumber = Number(siteObj.historynumber) + 1;
        const updateSql = sql.table("tb_5").data({ historynumber: newsNumber }).where({ id: siteObj.id }).update();
        const finres = await exec(updateSql);
        if (finres.affectedRows == 1) {
            return newsNumber
        } else {
            return 99999
        }
    }
}

module.exports = siteHandle