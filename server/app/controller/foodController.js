// app/controller/uploadController.js
const Controller = require('egg').Controller;
// 可以对文件进行操作
const fs = require('fs');
// fs
const path = require("path");

class foodController extends Controller {
  // 段发钰-获取菜品信息
  async getFoodC() {
    let id = this.ctx.request.query.id;
    let result = await this.ctx.service.foodService.getFoodS(id);
    this.ctx.response.body = result;
  }
};

module.exports = foodController