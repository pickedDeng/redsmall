var express = require('express');
var router = express.Router();
const ReturnData = require('../tools/ReturnData');
const siteHandle = require("../api/site")
/* GET users listing. */
router.get('/msg', async function (req, res, next) {
    const RD = new ReturnData(res);
    try {
        const siteMsg = await siteHandle.getMsg();
        if (siteMsg) {
            RD.success(siteMsg)
        } else {
            RD.fail(siteMsg)
        }

    } catch (error) {
        console.log(error)
        RD.fail(error)
    }

});

router.get('/pic', async (req, res) => {
    const RD = new ReturnData(res);
    try {
        const picRes = await siteHandle.getPictureList();
        if (picRes) {
            RD.success(picRes)
        } else {
            RD.fail();
        }
    } catch (error) {
        console.log(error)
        RD.fail(error)
    }
})

// 增加访问人数
router.get('/history', async (req, res) => {
    const RD = new ReturnData(res);
    try {
        const addHistory = await siteHandle.addHistory();
        if (addHistory != 99999) {
            RD.success(addHistory)
        } else {
            RD.fail(addHistory)
        }
    } catch (error) {
        console.log(error)
        RD.fail(error)
    }
})

module.exports = router;
