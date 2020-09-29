const Service = require('egg').Service
class loginService extends Service {
  //宋宇-用户登录验证
  async userLogin(name,pwd) {
    let sql = 'select *  from user where name = ? and pwd = ?';
    let result = await this.app.mysql.query(sql, [name,pwd])
    return result;
  }
  //宋宇-验证用户名
  async checkUser(username){
    let sql = 'select * from user where name= ?';
    let result = await this.app.mysql.query(sql,[username]);
    return result;
  }

  //宋宇-验证手机号是否存在
  async checkPhone(phone){
    let sql = 'select * from user where tel = ?';
    let result = await this.app.mysql.query(sql,[phone]);
    return result;
  }
  //宋宇-注册用户信息
  async userRegist(username,pwd,phone){
    let url=`http://127.0.0.1:7001/public/images/defaulthead.jpg`
    let sql = 'insert into user(name,pwd,tel,src) values(?,?,?,?)';
    let result = await this.app.mysql.query(sql,[username,pwd,phone,url]);
    return result;
  }

}
module.exports = loginService
