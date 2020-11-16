import React, { Component } from "react";
import FoodsMsg from "./make/FoodsMsg";
import FoodsMaterials from "./make/FoodsMaterials.js";
import FoodsStep from "./make/FoodsStep.js";
import "../../../../css/person/Make.css";
import axios from "../../../../axios";
import { Button } from "antd";
export default class Make extends Component {
  constructor() {
    super();
    // 获得基本信息
    this.FoodsMsg = null;
    //获得用料信息
    this.FoodsMaterials = null;
    this.FoodsStep = null;
  }

  commit = () => {
    let formData = new FormData();
    formData.append("userid", localStorage.getItem("userid"));

    // 拿到基本信息
    let foodmsg = this.FoodsMsg.state;
    if (!foodmsg.foodsCover || !foodmsg.foodsName) {
      alert("封面图或菜谱名称为必传项");
      return;
    }
    // console.log(foodmsg);
    formData.append("foodmsg", JSON.stringify(foodmsg));
    formData.append("foodcover", foodmsg.foodsCover);

    // 拿到用料信息
    let foodsmaterials = this.FoodsMaterials.state.dataSource;
    // console.log(foodsmaterials);
    formData.append("foodsmaterials", JSON.stringify(foodsmaterials));

    // 拿步骤描述信息 和步骤图片文件
    let stepdescs = [];
    let stepfiles = [];
    this.FoodsStep.itemArr.forEach(item => {
      stepdescs.push(item.state.stepDesc);
      stepfiles.push(item.state.stepImg);
    });
    // console.log(stepdescs, stepfiles);
    formData.append("stepdescs", JSON.stringify(stepdescs));
    stepfiles.forEach((item, index) => {
      formData.append(`step${index + 1}`, item);
    });

    const config = {
      headers: {
        "Content-Type": "multipart/form-data;boundary=" + new Date().getTime()
      }
    };
    axios
      .post("/uploadFoods", formData, config)
      .then(res => {
        if (res.data === "success") {
          alert("上传成功");
          // 上传成功之后跳转到我的作品页面
          this.props.goMyProduct();
        }
      })
      .catch(err => console.log(err));
  };

  render() {
    return (
      <div id='makefoods'>
        {/* 菜品基本信息 */}
        <FoodsMsg ref={e => (this.FoodsMsg = e)}></FoodsMsg>
        {/* 菜品用料信息 */}
        <FoodsMaterials ref={e => (this.FoodsMaterials = e)} />
        <FoodsStep ref={e => (this.FoodsStep = e)} />

        <Button type='primary' className='commit-btn' onClick={this.commit}>
          立即创建菜谱
        </Button>
      </div>
    );
  }
}
