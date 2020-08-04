var express = require('express');
var router = express.Router();
const blogHandle = require("../api/blogs");
const ReturnData = require('../tools/ReturnData');
//获取博客分类
router.get('/', async (req, res, next) => {
    const RD = new ReturnData(res);
    try {
        const cateRes = await blogHandle.getNewsCate();
        if (cateRes) {
            RD.success(cateRes)
        } else {
            RD.fail();
        }
    } catch (error) {
        console.log(error)
        RD.fail()
    }
})

//获取置顶博客
router.get('/hotList', async (req, res) => {
    const RD = new ReturnData(res);
    try {
        const { id } = req.query
        const hotRes = await blogHandle.getTopBlogByCateId(id)
        if (hotRes) {
            RD.success(hotRes)
        }
    } catch (error) {
        console.log(error)
        RD.fail(error)
    }

})
//分页获取博客列表
router.get('/list', async (req, res, next) => {
    const { id, page, rows } = req.query;
    const RD = new ReturnData(res);
    try {
        const blogList = await blogHandle.getBlogsByCateId(id, page, rows);
        const data = {
            data: blogList.data,
            total: blogList.total[0]["COUNT(id)"]
        }
        if (data) {
            RD.success(data)
        } else {
            RD.fail();
        }
    } catch (error) {
        console.log(error)
        RD.fail()
    }
})

// 根据blogs id查询博客详情接口
router.get('/detail/:id', async (req, res, next) => {
    const { id } = req.params;
    const RD = new ReturnData(res);
    RD.success(await blogHandle.getBlogDetailById(id))

})

//博客搜索
router.get('/search', async (req, res, next) => {
    const { title } = req.query;
    console.log(title)
    const RD = new ReturnData(res);
    try {
        const searchRes = await blogHandle.searchBlogByTitle(title);
        if (searchRes) {
            RD.success(searchRes)
        } else {
            RD.fail();
        }
    } catch (error) {
        console.log(error)
        RD.fail();
    }
})

//获取根据博客id 获取评论列表
router.get('/commentList', async (req, res) => {
    const RD = new ReturnData(res);
    const id = req.query.id;
    try {
        const commentRes = await blogHandle.getBlogCommentsList(id);
        if (commentRes) {
            RD.success(commentRes)
        } else {
            RD.fail(commentRes)
        }
    } catch (error) {
        console.log(error)
        RD.fail(error)
    }
})

//增加博客点击数

router.get('/hits', async (req, res) => {
    const RD = new ReturnData(res);
    const id = req.query.id;
    try {
        const addhitsRes = await blogHandle.addHits(id);
        if (addhitsRes) {
            RD.success(addhitsRes);
        } else {
            RD.fail(addhitsRes)
        }
    } catch (error) {
        console.log(error)
        RD.fail(error)
    }
})


module.exports = router;