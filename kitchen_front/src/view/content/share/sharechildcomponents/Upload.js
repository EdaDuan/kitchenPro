import React, { Component } from "react";
import axios from "../../../../axios/index.js";
import { Image } from "antd";
import "../../../../css/share/upload.css";
import loadfail from "../../../../images/share/loadfail.png";
import del from "../../../../images/share/delete.png";
import nologin from "../../../../images/share/nologin.png";
// 注意！！待上传的图片和展示的图片是一样的，只是前者是图片文件形式，后者是windows处理后的可预览的图片路径
export default class Uploading extends Component {
  constructor() {
    super();
    this.state = {
      // 用户头像
      headimg: null,
      // 用户昵称
      name: "",
      // 上传图片的加号
      imgsrc: loadfail,
      // 图片右下角的删除
      del: del,
      // 待上传的图片路径，用于展示
      showimg: [],
      // 要存进数据库的图片文件
      upimg: [],
      // 是否成功上传的提示文字
      upstate: ""
    };
  }
  // 上传组件挂载好之后判断用户是否登录，如果已经登录则获取用户表的用户头像和昵称，用于展示；反之则渲染未登录的头像和昵称
  componentDidMount() {
    if (localStorage.getItem("userid")) {
      axios
        .get("/getUserIfo", {
          params: {
            id: localStorage.getItem("userid")
          }
        })
        .then(res => {
          this.setState({
            headimg: res.data[0].src,
            name: res.data[0].name
          });
        });
    } else {
      this.setState({
        headimg: nologin,
        name: "未登录"
      });
    }
  }

  // 选择好图片后触发，注意！待上传的图片和用于预览用户选中的图片路径是不一样的，只有待上传的图片可以存储进数据库
  change(e) {
    let files = e.target.files;
    let url = null;
    for (let i = 0; i < files.length; i++) {
      // 将每次选好的待上传的图片push进upimg，这里只能用push，upimg才不会被覆盖
      this.state.upimg.push(files[i]);
      this.setState({
        upimg: this.state.upimg
      });
      if (window.createObjectURL !== undefined) {
        // 将每次选好的展示的图片push进showimg，这里只能用push，showimg才不会被覆盖
        url = window.createObjectURL(files[i]);
        this.state.showimg.push(url);
        this.setState({
          showimg: this.state.showimg
        });
      } else if (window.URL !== undefined) {
        url = window.URL.createObjectURL(files[i]);
        this.state.showimg.push(url);
        this.setState({
          showimg: this.state.showimg
        });
      } else if (window.webkitURL !== undefined) {
        url = window.webkitURL.createObjectURL(files[i]);
        this.state.showimg.push(url);
        this.setState({
          showimg: this.state.showimg
        });
      }
    }
  }
  // map循环showimg渲染待上传的图片以及删除图标，并绑定点击事件，传入index
  show() {
    let list = this.state.showimg.map((item, index) => {
      return (
        <div className='loadbox' key={index}>
          <Image src={item} className='loadimg' />
          <img src={this.state.del} className='del' alt='' onClick={this.del.bind(this, index)} />
        </div>
      );
    });
    return list;
  }
  // 点击删除图标删除对应index的图片
  del(index) {
    this.state.showimg.splice(index, 1);
    this.state.upimg.splice(index, 1);
    this.setState({
      showimg: this.state.showimg,
      upimg: this.state.upimg
    });
  }
  // 点击上传时触发，判断是否登录，若登录则判断分享描述或者待上传的图片是否为空，如果两个都为空则提示添加，如果有一个为空或都不为空则可以正常上传；若没有登录则提示登录
  click() {
    if (localStorage.getItem("userid")) {
      if (this.state.upimg.length !== 0 || document.getElementsByTagName("textarea")[0].value.trim() !== "") {
        let formData = new FormData();
        formData.append("u_id", localStorage.getItem("userid"));
        formData.append("des", document.getElementsByTagName("textarea")[0].value);
        this.state.upimg.forEach(item => {
          formData.append("img", item);
        });
        const config = {
          headers: {
            "Content-Type": "multipart/form-data;boundary=" + new Date().getTime()
          }
        };
        axios.post("/showImg", formData, config).then(res => {
          document.getElementsByTagName("textarea")[0].value = "";
          this.setState({
            showimg: [],
            // 上传成功则将upstate改为"上传成功"，用于成功上传的提示
            upstate: "上传成功！"
          });
          // 2s钟之后，成功上传提示消失
          setTimeout(() => {
            this.setState({
              upstate: ""
            });
          }, 2000);
        });
      } else {
        alert("请添加描述或上传图片！");
      }
    } else {
      alert("请先登录！");
    }
  }
  // 用于显示成功上传后的提示
  showupstate() {
    return <span className='upstate'>{this.state.upstate}</span>;
  }

  render() {
    return (
      <>
        <div className='upload'>
          <div className='userInfo'>
            <div className='headboxs'>
              <img src={this.state.headimg} className='headimgs' alt='' />
            </div>
            <p className='name'>{this.state.name}</p>
          </div>
          <div className='line1'></div>
          <div className='move'>
            <p className='tip'>享你所想!</p>
            <textarea row='10' maxLength='300' className='text'></textarea>
            <div className='line2'></div>
            <p className='tip'>上传香香的诱惑!</p>
            <div className='bigbox'>
              {this.show()}
              <div className='clickbox'>
                {/*multiple支持多文件上传，accept仅支持jpg、png、jpeg、gif格式的图片*/}
                <input id='imgsrc' type='file' multiple accept='image/jpg,image/png,image/jpeg,image/gif' onChange={this.change.bind(this)} className='put' />
                <img src={this.state.imgsrc} className='loadfail' alt='' />
                <p className='loadtips'>还可以上传{9 - this.state.showimg.length}张图片</p>
              </div>
            </div>
            <span>{this.showupstate()}</span>
            <button className='btn' onClick={this.click.bind(this)}>
              上传分享 +
            </button>
          </div>
        </div>
      </>
    );
  }
}
