const Service = require('egg').Service
class bannerService extends Service {
  // 段发钰-获取轮播图
  async getBannerS(id) {
    let getBannerSql = 'select *  from banner';
    // await this.ctx.app.mysql.query(getfoodSql, [id]);
    let result = await this.app.mysql.query(getBannerSql, [id])
    return result;
  }
}
module.exports = bannerService
