const Service = require('egg').Service
class foodService extends Service {
  // 段发钰-获取菜品信息
  async getFoodS(id) {
    let getfoodSql = 'select *  from foods where id = ?';
    // await this.ctx.app.mysql.query(getfoodSql, [id]);
    let result = await this.app.mysql.query(getfoodSql, [id])
    return result;
  }
}
module.exports = foodService
