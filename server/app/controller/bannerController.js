const Controller = require('egg').Controller;
const fs = require('fs');
const path = require("path");

class bannerController extends Controller {
  // 段发钰-轮播图
  async getBannerC() {
    let id = this.ctx.request.query.id;
    let result = await this.ctx.service.bannerService.getBannerS(id);
    this.ctx.response.body = result;
  }
};

module.exports = bannerController