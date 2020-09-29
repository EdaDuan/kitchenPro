const Service = require("egg").Service;

class SeachService extends Service {
  //朱思霖-搜索页根据关键词搜索菜品信息
  async getFoodsByKeyWord(userid, keyword) {
    //先根据从foods表中查询所有的菜品,以及菜品上传者的头像和name
    let sql1 = "SELECT foods.* ,`user`.name u_name, `user`.src as u_src from foods LEFT JOIN user on foods.au_id = `user`.id";
    let allfoods = await this.ctx.app.mysql.query(sql1);
    // 再根据关键词筛选
    let filterFoods;
    if (keyword == "all") {
      // 如果关键词是all，则不用进行过滤了
      filterFoods = allfoods;
    } else {
      //否则根据关键词先过滤出符合条件的菜品
      filterFoods = allfoods.filter(item => {
        if (item.name.indexOf(keyword) !== -1 || item.des.indexOf(keyword) !== -1 || item.type.indexOf(keyword) !== -1) {
          return true;
        } else {
          return false;
        }
      });
    }

    //如果用户id不为空，查询出当前用户收藏的菜品,并为filterFoods加上一个是否已经被收藏的属性
    //如果用户收藏了该商品，iscollect=1，如果没有收藏iscollect的值为0
    if (userid) {
      // console.log("id不为空");
      let sql = `select f_id from collect where u_id = ?`;
      let collectList = await this.ctx.app.mysql.query(sql, [userid]);
      //如果用户收藏的为空，直接给每个数组添加iscollect=0；如果不为空，则进行遍历
      if (collectList.length == 0) {
        filterFoods.forEach(fitem => {
          fitem.iscollect = 0;
        });
      } else {
        collectList.forEach(citem => {
          filterFoods.forEach(fitem => {
            if (citem.f_id == fitem.id) {
              fitem.iscollect = 1;
            } else {
              if (fitem.iscollect == undefined) fitem.iscollect = 0;
            }
          });
        });
      }
    } else {
      // 如果用户id为空，则为每个都添加iscollect=0的属性
      filterFoods.forEach(fitem => {
        fitem.iscollect = 0;
      });
    }
    return filterFoods;
  }

  //处理用户收藏
  async handleCollect(userid,foodsid){
    let sql=`insert into collect(u_id,f_id) values (?,?)`
    let result=await this.ctx.app.mysql.query(sql,[userid,foodsid])
    return result.affectedRows;
  }

   //处理用户取消收藏   
   async cancelCollect(userid,foodsid){
    let sql=`delete from collect where u_id = ? and f_id =?`
    let result=await this.ctx.app.mysql.query(sql,[userid,foodsid])
    return result.affectedRows;
  }
 //朱思霖-得到某用户收藏的菜品
  async getMyCollect(userid){
    // 得到用户的名字和头像信息
    let sql1 = `select user.name,user.src from user where id=? `
    let userinfo=await this.ctx.app.mysql.query(sql1,userid)

    // 得到该用户收藏的所有菜品信息
    let sql2=`select foods.* from collect LEFT JOIN foods on foods.id=collect.f_id where collect.u_id = ?`
    let collectFoods = await this.ctx.app.mysql.query(sql2,[userid])

    //如果收藏菜品不为空。则查询每一条商品被收藏过多少次
    if(collectFoods.length!==0){
      for(let item of collectFoods){
        let result =await this.ctx.app.mysql.query("select COUNT(*) number from collect where f_id=?",[item.id])
        item.number=result[0].number
      }
    }
    // console.log(collectFoods)
    return{
      userinfo,
      collectFoods
    }
  }
}
module.exports = SeachService;
