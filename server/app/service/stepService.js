const Service = require('egg').Service
class stepService extends Service {
  // 段发钰-获取步骤信息
  async getStepS(fid) {
    let getfoodSql = 'select *  from step where f_id = ?';
    // await this.ctx.app.mysql.query(getfoodSql, [id]);
    let result = await this.app.mysql.query(getfoodSql, [fid])
    return result;
  }
}
module.exports = stepService
