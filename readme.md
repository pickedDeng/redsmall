## 写在前面
+ 前台预览地址：[http://pickeddeng.club](http://pickeddeng.club "红色小裤衩")
+ 后台管理地址：[http://admin.pickeddeng.club/admin.php](http://pickeddeng.club.admin.php "红色小裤衩后台管理")
+ 用户名：admin 密码：123456 (登陆后5秒内没有跳转主页，请手动刷新一下，服务器比较卡)


#### 项目目录介绍
- blogs-express-api   ---- express api接口
    - api ---- api接口处理
    - bin ---- 启动
    - config ---- 配置信息
    - routes ---- 后端路由信息
- blogs-manage   ---- phpok后台管理界面
    - _config 配置信息
    - res ----资源文件存储文件夹
    - tpl ---- 后端页面
- blogs-vue-web ---- vue前台博客展示界面
    - src ----博客前台
        - api ---- api请求接口
        - assets ---- 静态文件 iconfont 等
        - store ---- vuex 仓库
        - views ---- 页面
        - router ---- 前端路由 
- myblog.sql  ----  数据库sql 文件
- phpStudy.exe ---- 部署本地化服务工具

#### 项目介绍 
本着练手的初衷，编写了这个看上架构乱乱的系统（大佬可自行忽略本系统）。为了节约后台页面开发的时间，该项目由phpok模板搭建的统一后台管理，通过express读取数据表编写中间桥接API接口暴露给前台去请求。博客前台通过vue搭建，本人为前端对服务器等知之甚少，所以在线上部署的时候使用的都是比较基础的工具。

#### 技术栈
+ vue 
+ vuex
+ express
+ mysqls (处于便捷用mysqls替代了sequelize 去连接数据库)
+ phpok
+ 等

#### 系统支持功能
+ h5音乐播放器
+ 动态多分类博客
+ 博客置顶
+ 博客标签
+ 阅读数
+ 富文本编辑
+ 评论+回复
+ 博主相册
+ 友情链接
+ 提交申请
+ 链接审核
+ 留言板
+ 站点信息
+ 打赏码
+ ...


#### 安装
+ 新建一个数据库名称为 myblog 首先将myblog.sql 数据库文件导入到该数据库中
#### 1、后台管理安装：
+ 在blogs-manage -> _config -> db.ini.php 文件中第10、18、22行分别填入数据库配置host、user、pass；
+ 拿phpstudy来举例（下载地址：[https://www.xp.cn/download.html](https://www.xp.cn/download.html"phpstudy下载")）将根目录下blogs-manage文件夹复制到本地开启的集成环境中，打开[localhost/blogs-manage/admin.php](localhost/blogs-manage/admin.php"地址")可看到后台登录页。账号：admin 密码 123456

#### 2、express 接口处理安装：
+ 确保安装了node环境 cmd -> node -v 检擦是否已安装；
+ 在blogs-express-api -> config -> db.js中 修改数据库链接配置
+ 在blogs-express-api 下运行 ``` npm i ``` 安装依赖
+ cmd运行 ``` npm start ``` 就可以启动api
+ 在文档中查看相应的接口文档进行个性化修改（自定义）

#### 3 博客前台安装
 + 在 blogs-vue-web文件夹下 cmd 运行 ``` npm i ``` 安装项目依赖
 + cmd 运行 ``` npm run serve  ```  就可以看到，默认运行在```localhost:8080 ```

#### 4、图片视频素材前缀配置
将blogs-manage后台管理文件部署完毕后例如部署后 在本地``` localhost/blogs-manage``` 可打开，那么
+ 1、需要在blogs-express-api -> config -> assetConfig.js 中修改前缀为 ``` http://localhost/blogs-manage/  ``` 注意 地址最后的 ``` /  ```  不要忘了
+ 2、需要在blogs-vue-web -> src -> config -> config.js 中修改前缀为 ``` http://localhost/blogs-manage/  ``` 注意 地址最后的 ``` /  ```  不要忘了


## 最后给这么详细的文档给一个 start 吧；



