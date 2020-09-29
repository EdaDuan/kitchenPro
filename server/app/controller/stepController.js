const Controller = require('egg').Controller;
const fs = require('fs');
const path = require("path");

class stepController extends Controller {
  // 段发钰-获取步骤信息
  async getStepC() {
    let fid = this.ctx.request.query.fid;
    let result = await this.ctx.service.stepService.getStepS(fid);
    this.ctx.response.body = result;
  }
};

module.exports = stepController