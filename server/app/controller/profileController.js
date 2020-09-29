const Controller = require("egg").Controller;

class ProfileController extends Controller {
  // 刘俊良上传新的菜谱
  async uploadFoods() {
    let result = await this.ctx.service.profileService.uploadFoods();
    this.ctx.response.body = result;
  }

  // 刘俊良页面加载获取用户id、头像  路由
  async onload() {
    let id = this.ctx.request.query.id;
    let result = await this.ctx.service.profileService.load(id);
    this.ctx.response.body = result;
  }
  //刘俊良获取当前用户菜品   新增
  async getmyproduct() {
    let id = this.ctx.request.query.id;
    let result = await this.ctx.service.profileService.getmyproduct(id);
    this.ctx.response.body = result;
  }
}

module.exports = ProfileController;
