const Service = require('egg').Service
class materialsService extends Service {
  // 段发钰-获取材料信息
  async getMaterialsS(fid) {
    let getMaterialsSql = 'select *  from Materials where f_id = ?'
    let result = await this.app.mysql.query(getMaterialsSql, [fid])
    return result;
  }
}
module.exports = materialsService
