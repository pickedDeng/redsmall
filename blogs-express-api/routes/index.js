var express = require('express');
var router = express.Router();
const indexHandle = require("../api/index")

/* GET home page. */
router.get('/', async function(req, res, next) {
  const selectRes = await indexHandle.demo();
  res.send(selectRes)
});

module.exports = router;
