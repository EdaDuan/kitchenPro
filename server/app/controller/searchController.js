const Controller = require('egg').Controller;
class SearchController extends Controller {
  
  //朱思霖-搜索页根据关键词搜索菜品信息
  async getFoodsByKeyWord() {
    let userid=this.ctx.request.body.userid
    let keyword=this.ctx.request.body.keyword
    // console.log(userid,keyword)


    let foodsList = await this.ctx.service.searchService.getFoodsByKeyWord(userid,keyword);
    this.ctx.response.body = foodsList;
  }

 //朱思霖-用户点击收藏
  async handleCollect(){
    let {userid,foodsid}=this.ctx.request.query;
    this.ctx.response.body=await this.ctx.service.searchService.handleCollect(userid,foodsid)
  }

  //朱思霖-用户取消收藏
  async cancelCollect(){
    let {userid,foodsid}=this.ctx.request.query;
    this.ctx.response.body=await this.ctx.service.searchService.cancelCollect(userid,foodsid)
  }

  //朱思霖-得到某用户收藏的菜品
  async getMyCollect(){
    let {userid}=this.ctx.request.query;
    this.ctx.response.body=await this.ctx.service.searchService.getMyCollect(userid)
  }
};

module.exports = SearchController