var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

//数据库初始化  
const mysqlInit = require("./config/db")
mysqlInit()

// 路由引入
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
const blogs = require("./routes/blogs");
const leaveWords = require("./routes/leaveWords")
const friendLink = require("./routes/friendLink")
const site = require("./routes/site")
const comment = require("./routes/comment")
var app = express();
const cors = require("cors");
app.use(cors());
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');



// 跨域操作


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
var options = {
  dotfiles: "ignore",
  etag: false,
  extensions: ["htm", "html", "css", "png", "gif", "jpg", "js", "tpl"],
  index: true,
  maxAge: "1000",
  redirect: true,
  setHeaders: function (res, path, stat) {
    res.set("x - timestamp", Date.now())
  }
};
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/blogs', blogs);
app.use('/words', leaveWords);
app.use('/friendLink', friendLink);
app.use('/site', site);
app.use('/comment', comment);


// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
