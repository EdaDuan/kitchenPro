const Controller = require('egg').Controller;

class shareController extends Controller {
	  // 蒋鑫瑞-分享大厅搜索所有用户的分享
    async showAll() {
      let list = await this.service.shareService.showAll();
      this.ctx.response.body=list;
    }
		// 蒋鑫瑞-分享大厅根据localStorage的用户id取用户自己的分享
		async showOwn(){
			let list = await this.service.shareService.showOwn();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-查询分享大厅上传分享组件中用户的头像、昵称
		async getUserIfo(){
			let list = await this.service.shareService.getUserIfo();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-上传用户的分享内容
		async showImg(){
			let list = await this.service.shareService.showImg();
			this.ctx.response.body=list;
		}
    // 蒋鑫瑞-分享大厅添加评论
		async addComment(){
			let list = await this.service.shareService.addComment();
			this.ctx.response.body=list;
		}
	  // 蒋鑫瑞-分享大厅展示评论
		async getComment(){
			let list = await this.service.shareService.getComment();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-分享大厅评论删除
		async delComment(){
			let list = await this.service.shareService.delComment();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-分享大厅删除分享
		async delShare(){
			let list = await this.service.shareService.delShare();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-分享大厅查询点赞
		async getLiker(){
			let list = await this.service.shareService.getLiker();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-分享大厅添加点赞
		async addLike(){
			let list = await this.service.shareService.addLike();
			this.ctx.response.body=list;
		}
		// 蒋鑫瑞-分享大厅删除点赞
		async delLike(){
			let list = await this.service.shareService.delLike();
			this.ctx.response.body=list;
		}
};

module.exports = shareController