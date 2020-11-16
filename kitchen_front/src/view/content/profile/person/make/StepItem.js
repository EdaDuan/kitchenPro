import React, { Component } from "react";

export default class StempItem extends Component {
  constructor() {
    super();
    this.state = {
      stepDesc: "",
      stepImg: ""
    };
    this.fileInput = null;
  }

  // 输入步骤描述
  stepDescChange = e => {
    this.setState({
      stepDesc: e.target.value
    });
  };

  // 步骤图
  changeStepImg = () => {
    let file = this.fileInput.files[0];
    // 生成本地url
    if (file) {
      let url = null;
      if (window.createObjectURL !== undefined) {
        url = window.createObjectURL(file);
      } else if (window.URL !== undefined) {
        url = window.URL.createObjectURL(file);
      } else if (window.webkitURL !== undefined) {
        url = window.webkitURL.createObjectURL(file);
      }
      // 本地显示图片
      let uploadImage = document.getElementById("img" + this.props.order);
      uploadImage.src = url;
    } else {
      // 本地显示图片
      let uploadImage = document.getElementById("img" + this.props.order);
      uploadImage.removeAttribute("src");
    }
    this.setState({
      stepImg: file
    });
  };

  render() {
    return (
      <div className='step-box'>
        <h2 style={{ fontWeight: "500", color: "gray" }}>步骤{this.props.order}：</h2>
        <textarea placeholder='添加步骤描述' value={this.state.stepDesc} onChange={this.stepDescChange} rows='10' clos='20'></textarea>
        <div className='step-img-box'>
          <img id={"img" + this.props.order} alt='' />
          <input type='file' className='stepfile' ref={e => (this.fileInput = e)} onChange={this.changeStepImg} />
        </div>
      </div>
    );
  }
}
