const Controller = require('egg').Controller;
const fs = require('fs');
const path = require("path");

class materialsController extends Controller {
  // 段发钰-获取材料信息
  async getMaterialsC() {
    let fid = this.ctx.request.query.fid;
    // console.log('-----' + fid)
    let result = await this.ctx.service.materialsService.getMaterialsS(fid);
    this.ctx.response.body = result;
  }
};

module.exports = materialsController