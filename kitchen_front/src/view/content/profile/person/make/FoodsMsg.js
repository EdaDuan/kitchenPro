import React, { Component } from "react";
export default class FoodsMsg extends Component {
  constructor() {
    super();
    this.state = {
      foodsName: "",
      foodsCover: "",
      foodsDesc: "",
      foodsType: ""
    };
    this.FileInput = null;
  }

  // 菜品名称输入
  changename = e => {
    this.setState({
      foodsName: e.target.value
    });
  };

  //菜品的图片改变
  changeImg = () => {
    let file = this.FileInput.files[0];
    if (file) {
      // 生成本地url
      let url = null;
      if (window.createObjectURL !== undefined) {
        url = window.createObjectURL(file);
      } else if (window.URL !== undefined) {
        url = window.URL.createObjectURL(file);
      } else if (window.webkitURL !== undefined) {
        url = window.webkitURL.createObjectURL(file);
      }
      // 本地显示图片
      let uploadImage = document.getElementsByClassName("uploadImage")[0];
      uploadImage.src = url;
    } else {
      // 本地显示图片
      let uploadImage = document.getElementsByClassName("uploadImage")[0];
      uploadImage.removeAttribute("src");
    }

    this.setState({
      foodsCover: file
    });
  };

  //菜品描述的改变
  changeDesc = e => {
    this.setState({
      foodsDesc: e.target.value
    });
  };

  changeType = e => {
    this.setState({
      foodsType: e.target.value
    });
  };

  render() {
    return (
      <React.Fragment>
        {/* 菜名 */}
        <div className='food-msg-box'>
          <p className='make-title'>菜谱名称：</p>
          <input type='text' placeholder='添加菜谱名称' className='foods-name' value={this.state.foodsName} onChange={this.changename} />
        </div>
        {/* 菜品主图 */}
        <div className='food-msg-box'>
          <p className='make-title'>菜谱封面：</p>
          <div className='make-cover'>
            <img className='uploadImage' style={{ width: "400px", height: "400px" }} alt='' />
            <input type='file' className='coverfile' ref={e => (this.FileInput = e)} onChange={this.changeImg} />
          </div>
        </div>
        {/* 菜品描述 */}
        <div className='food-msg-box'>
          <p className='make-title'>菜谱描述： </p>
          <div className='foods-des'>
            <textarea placeholder='添加一段描述' value={this.state.foodsDesc} onChange={this.changeDesc}></textarea>
          </div>
        </div>

        {/* 菜品分类 */}
        <div className='food-msg-box'>
          <p className='make-title'>菜谱分类： </p>
          <input type='text' placeholder='可添加多个分类，如：早餐 甜食' className='foods-type' value={this.state.foodsType} onChange={this.changeType} />
        </div>

        <hr style={{ width: "500px", margin: "20px 0" }}></hr>
      </React.Fragment>
    );
  }
}
