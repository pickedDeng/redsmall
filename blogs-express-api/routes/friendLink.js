var express = require('express');
var router = express.Router();
const friendLinkHandle = require("../api/friendLink")
const ReturnData = require('../tools/ReturnData');


//提交友情链接申请
router.post('/apply', async function (req, res, next) {
    const RD = new ReturnData(res);
    try {
        const { title, thumb,note,linkurl,adminreply } = req.body;
        if (adminreply) {
            RD.fail({ msg: "你想尝试啥^_^" })
            return
        }
        const finRes = await friendLinkHandle.linkApply({ title, thumb,note,linkurl });
        if(finRes.affectedRows == 1){
            RD.success()
        }else{
            RD.fail(finRes)
        }
    } catch (error) {
        console.log(error)
        RD.fail({ msg: error })
    }
});

//友情链接列表

router.get('/list',async (req,res)=>{
    console.log(req.ip)
  const RD = new ReturnData(res);
  const {status} = req.query;
  const linkListRes = await friendLinkHandle.getFriendLinkByStatus(status);
  if(linkListRes){
      RD.success(linkListRes)
  }else{
      RD.fail();
  }
})

// router.get('/ip',async (req,res)=>{
//   const RD = new ReturnData(res);
//   let ip = req.ip.replace("::ffff:","") 
//   RD.success(req.headers)
// })

module.exports = router;
