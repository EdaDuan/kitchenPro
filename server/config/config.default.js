exports.keys = "dfbgffdsafddgfd";

exports.security = {
  csrf: {
    enable: false,
    ignoreJSON: true
  },
  WhiteList: '*'
};
exports.cors = {
  origin: '*',
  allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH'
};
exports.mysql = {
  client: {
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '123456',
    database: 'kcdatabase',
  },
};
// 文件上传
exports.multipart = {
  mode: "file",
  // 表单上传字段限制的个数
  fields: 50,
  // 允许文件上传的大小

  fileSize: "50mb",
  // 新增文件上传的格式
  fileExtensions: ['.txt'],
};

//配置服务器端口号
exports.cluster = {
	listen: {
		path: "",
		port: 7001
	}
}