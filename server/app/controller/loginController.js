const Controller = require('egg').Controller;
class LoginController extends Controller {
  
  //宋宇-用户登录验证
  async userLogin() {
    let username=this.ctx.request.body.username
    let password=this.ctx.request.body.password
    let res = await this.ctx.service.loginService.userLogin(username,password);
    this.ctx.response.body = res;
  }
  //宋宇-验证用户名
  async checkUser(){
    let username = this.ctx.request.body.username;
    let res = await this.ctx.service.loginService.checkUser(username);
    this.ctx.response.body = res;

  }
  //宋宇-验证手机号是否存在
  async checkPhone(){
    let phone = this.ctx.request.body.phone;
    let res = await this.ctx.service.loginService.checkPhone(phone);
    this.ctx.response.body = res;
  }
  //宋宇-注册用户信息
  async userRegist(){
    let username = this.ctx.request.body.username;
    let pwd = this.ctx.request.body.pwd;
    let phone = this.ctx.request.body.phone;
    let res = await this.ctx.service.loginService.userRegist(username,pwd,phone);
    this.ctx.response.body = res;
  }
  
};

module.exports = LoginController