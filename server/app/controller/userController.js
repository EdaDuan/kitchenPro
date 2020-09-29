const Controller = require('egg').Controller;
const fs = require('fs');
const path = require("path");

class userController extends Controller {
  // 段发钰-获取用户信息
  async getUserC() {
    let id = this.ctx.request.query.id;
    let result = await this.ctx.service.userService.getUserS(id);
    this.ctx.response.body = result;
  }
};

module.exports = userController