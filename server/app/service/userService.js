const Service = require('egg').Service
class userService extends Service {
  // 段发钰-获取用户信息
  async getUserS(id) {
    let getUserSql = 'select user.name,user.src  from user join foods on user.id = foods.au_id where foods.id = ?';
    // await this.ctx.app.mysql.query(getfoodSql, [id]);
    let result = await this.app.mysql.query(getUserSql, [id])
    return result;
  }
}
module.exports = userService
