var express = require('express');
var router = express.Router();
const leaveWordsHandle = require("../api/leaveWords")
const ReturnData = require('../tools/ReturnData');


//提交留言
router.post('/add', async function (req, res, next) {
    const RD = new ReturnData(res);
    try {
        const { fullname, qq, mobile, content, ip, dataline, adminreply } = req.body;
        if (adminreply) {
            RD.fail({ msg: "你想尝试啥^_^" })
            return
        }
        const wordsAddRes = await leaveWordsHandle.wordsAdd({ fullname, qq, mobile, content, ip, dataline });
        if (wordsAddRes.affectedRows === 1) {
            RD.success()
        } else {
            RD.fail()
        }
    } catch (error) {
        console.log(error)
        RD.fail({ msg: error })
    }
});

router.get('/list', async (req, res) => {
    const RD = new ReturnData(res);
    try {
        const listRes = await leaveWordsHandle.wordsList();
        if (listRes) {
            RD.success(listRes)
        } else {
            RD.fail()
        }
    } catch (error) {
        console.log(error)
        RD.fail(error)
    }
})

module.exports = router;
