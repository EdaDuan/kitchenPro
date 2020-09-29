const Service = require("egg").Service;
const { timeStamp } = require("console");
const fs = require("fs");
const path = require("path");

class ProfileService extends Service {
  // 刘俊良上传新的菜谱
  async uploadFoods() {
    let { userid, foodmsg, foodsmaterials, stepdescs } = this.ctx.request.body;
    let msg = JSON.parse(foodmsg); //主要信息
    let materials = JSON.parse(foodsmaterials); //材料信息
    let stepdes = JSON.parse(stepdescs); //步骤描述
    let files = this.ctx.request.files; //步骤文件和封面文件
    let foodid;
    //添加步骤到数据库，上传步骤图

    try {
      for (let [index, file] of files.entries()) {
        if (file.field === "foodcover") {
          // 往foods表添加基本内容
          let toFileName = "/public/foodsupload/cover/" + Date.now() + file.filename; //把图片放进uploadPic文件夹中并取了一个独一无二的名字
          let to = path.dirname(__dirname) + toFileName;
          //file.filepath是上传的临时文件,把临时文件写入到文件to
          await fs.copyFileSync(file.filepath, to);
          //删除临时文件
          await fs.unlinkSync(file.filepath);
          //得到上传文件的网络访问 url
          let newUrl = "http://localhost:7001" + toFileName;
          //存入数据库
          let sql = `insert into foods(name,src,des,type,au_id,time) values (?,?,?,?,?,now())`;
          let result = await this.ctx.app.mysql.query(sql, [msg.foodsName, newUrl, msg.foodsDesc, msg.foodsType, userid]);

          // 添加成功之后，找到添加的这一条数据的id
          if (result.affectedRows == 1) {
            let result2 = await this.ctx.app.mysql.query("SELECT id from foods ORDER BY id DESC LIMIT 1");
            foodid = result2[0].id;
          }
          // 添加材料信息到数据库
          for (let item of materials) {
            let sql2 = `insert into materials(name,num,f_id) values (?,?,?)`;
            await this.ctx.app.mysql.query(sql2, [item.item, item.num, foodid]);
          }
        } else {
          let toFileName = "/public/foodsupload/step/" + Date.now() + file.filename; //把图片放进uploadPic文件夹中并取了一个独一无二的名字
          let to = path.dirname(__dirname) + toFileName;
          //file.filepath是上传的临时文件,把临时文件写入到文件to
          await fs.copyFileSync(file.filepath, to);
          //删除临时文件
          await fs.unlinkSync(file.filepath);
          //得到上传文件的网络访问 url
          let newUrl = "http://localhost:7001" + toFileName;
          let step = file.field.slice(4);
          let sql = `insert into step(tips,src,step,f_id) values (?,?,?,?)`;
          await this.ctx.app.mysql.query(sql, [stepdes[index - 1], newUrl, step, foodid]);
        }
      }
    } catch (e) {
      console.log(e);
    }
    return "success";
  }

  // 刘俊良页面加载获取用户id、头像  路由
  async load(id) {
    let sql = "select src,name from user where id = ?";
    let result = await this.app.mysql.query(sql, [id]);
    return result;
  }
  //刘俊良获取当前用户菜品   新增
  async getmyproduct(id) {
    let sql = "select * from foods where au_id = ?";
    let result = await this.app.mysql.query(sql, [id]);
    return result;
  }
}
module.exports = ProfileService;
