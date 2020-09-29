const Service = require('egg').Service
class foodStoryService extends Service {
  // 段发钰-厨房故事
  async getFoodsStoryS(sid) {
    let getFoodsStorySql;
    if (!sid) {
      getFoodsStorySql = 'select *  from foodstory';
    }
    else {
      getFoodsStorySql = 'select *  from foodstory where id = ?';
    }
    let result = await this.app.mysql.query(getFoodsStorySql, [sid])
    return result;
  }
  // getStoryDetailCS
  async getStoryDetailS(fs_id) {
    // console.log(fs_id);
    let getStoryDetailCSql = 'select *  from foodstorystep where fs_id = ?';
    let result = await this.app.mysql.query(getStoryDetailCSql, [fs_id])
    return result;
  }
}
module.exports = foodStoryService
