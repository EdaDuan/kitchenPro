# kitchenPro
1、基于React和Egg的食享食堂进行了背景分析、概要设计、数据库设计和项目架构等工作

2、功能主要有首页的推荐，登录/注册，搜索、食谱展示，详情模块，分享页面，个人中心页面其中包括收藏点赞，上传分享菜品等功能

数据库文件：kcdatabase.sql
数据库默认配置：server/config/config/default.js

exports.mysql = {
  client: {
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '123456',
    database: 'kcdatabase',
  },
};
服务器默认端口:7001 server/config/config/default.js

exports.cluster = {
	listen: {
		path: "",
		port: 7001
	}
}
axios请求地址修改 :kitchen/src/axios/index.js

axios.defaults.baseURL='http://127.0.0.1:7001';
server的图片上传路径profileService shareService中的路径存储默认都是http://127.0.0.1:7001

防止上传文件过大，数据库多数图片资源使用的网上资源，少数图片存储在服务器中。如果服务器的ip和端口号改变，数据库相关的图片资源的路径也需要改变。
