const Controller = require('egg').Controller;
const fs = require('fs');
const path = require("path");

class foodStoryController extends Controller {
  // 段发钰-厨房故事
  async getFoodsStoryC() {
    let sid = this.ctx.request.query.sid;
    let result = await this.ctx.service.foodStoryService.getFoodsStoryS(sid);
    this.ctx.response.body = result;
  }
  // 段发钰-厨房故事详情部分getStoryDetailC
  async getStoryDetailC() {
    let id = this.ctx.request.query.fs_id;
    let result = await this.ctx.service.foodStoryService.getStoryDetailS(id);
    this.ctx.response.body = result;
  }
};

module.exports = foodStoryController