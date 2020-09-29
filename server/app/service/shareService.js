const Service =require('egg').Service;
const fs = require('fs');
const path = require("path");

class shareService extends Service{
  // 蒋鑫瑞-分享大厅搜索所有用户的分享
  async showAll() {
		let sql = "select user.name,user.src,share.id,share.times,share.des,share.img,share.u_id from user,share where user.id=share.u_id order by share.times desc"
		let list = await this.app.mysql.query(sql,[]);
    return list;
  }
	// 蒋鑫瑞-分享大厅根据localStorage的用户id取用户自己的分享
	async showOwn() {
		let u_id = this.ctx.request.query.id
		if(u_id){
			let sql = "select user.name,user.src,share.id,share.times,share.des,share.img,share.u_id from user,share where user.id=? and user.id=share.u_id order by share.times desc"
			let list = await this.app.mysql.query(sql,[u_id]);
			return list
		}else{
			return ["nologin"]
		}
	}
	// 蒋鑫瑞-查询分享大厅上传分享组件中用户的头像、昵称
	async getUserIfo() {
		let id = this.ctx.request.query.id;
	  let sql = "select * from user where id=?"
	  let list = await this.app.mysql.query(sql,[id]);
	  return list
	}
	// 蒋鑫瑞-上传用户的分享内容
	async showImg() {
		let files = this.ctx.request.files
		let u_id = this.ctx.request.body.u_id
		let des = this.ctx.request.body.des
		let imgs = []
		for (let item of files) {
		  let toFileName = '/public/shareupload/' + Date.now() + item.filename;
		  let to = path.dirname(__dirname) + toFileName;
		  await fs.copyFileSync(item.filepath, to);
		  await fs.unlinkSync(item.filepath);
		  let newUrl = "http://localhost:7001" + toFileName;
		  imgs.push(newUrl)
		}
		let imgsrc = imgs.join(" ")
		let sql = "insert into share(times,des,img,u_id) values((select sysdate()),?,?,?)"
		let list = await this.ctx.app.mysql.query(sql, [des,imgsrc,u_id])
		return list.affectedRows
	}
	// 蒋鑫瑞-分享大厅添加评论
	async addComment(){
		let comments = this.ctx.request.query.comment
		let u_id = this.ctx.request.query.u_id
		let share_id = this.ctx.request.query.share_id
		let sql = "insert into comments (comments,u_id,share_id) values (?,?,?)"
		let list = await this.app.mysql.query(sql,[comments,u_id,share_id]);
		return list.affectedRows
	}
	// 蒋鑫瑞-分享大厅展示评论
	async getComment(){
		let share_id = this.ctx.request.query.share_id
		let sql = "select user.name,user.src,comments.comments,comments.u_id,comments.id from user,comments where user.id=comments.u_id and comments.share_id=?"
		let list = await this.app.mysql.query(sql,[share_id]);
		return list
	}
	// 蒋鑫瑞-分享大厅评论删除
	async delComment(){
		let id = this.ctx.request.query.id
		let sql = "delete from comments where id=?"
		let list = await this.app.mysql.query(sql,[id]);
		return list.affectedRows
	}
	// 蒋鑫瑞-分享大厅删除分享
	async delShare(){
		let id = this.ctx.request.query.id
		let sql = "delete from share where id=?"
		let list = await this.app.mysql.query(sql,[id]);
		return list.affectedRows
	}
	// 蒋鑫瑞-分享大厅查询点赞
	async getLiker(){
		let s_id = this.ctx.request.query.s_id
		let sql = "select * from likes where s_id=?"
		let list = await this.app.mysql.query(sql,[s_id]);
		return list
	}
	// 蒋鑫瑞-分享大厅添加点赞
	async addLike(){
		let s_id = this.ctx.request.query.s_id
		let u_id = this.ctx.request.query.u_id
		let sql = "insert into likes (u_id,s_id) values (?,?)"
		let list = await this.app.mysql.query(sql,[u_id,s_id]);
		return list.affectedRows
	}
	// 蒋鑫瑞-分享大厅删除点赞
	async delLike(){
		let s_id = this.ctx.request.query.s_id
		let u_id = this.ctx.request.query.u_id
		let sql = "delete from likes where u_id=? and s_id=?"
		let list = await this.app.mysql.query(sql,[u_id,s_id]);
		return list.affectedRows
	}
}

module.exports=shareService;