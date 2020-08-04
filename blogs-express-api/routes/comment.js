var express = require('express');
var router = express.Router();
const commentHandle = require("../api/comment")
const ReturnData = require('../tools/ReturnData');

router.post('/apply',async (req,res)=>{
  const RD = new ReturnData(res);
  try{
    const {tid,title,content,ip,parent_id,addtime} = req.body;
    const commentApplyRes = await commentHandle.commentApply({tid,title,content,ip,parent_id,addtime})
    if(commentApplyRes.affectedRows == 1){
      RD.success();
    }else{
      RD.fail(commentApplyRes)
    }
    
  }
  catch(err){
      console.log(err)
      RD.fail(err);
  }
})


module.exports = router