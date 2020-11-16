import React, { Component } from "react";
import { UserOutlined } from "@ant-design/icons";
import { Input } from "antd";
import axios from "../../../../axios/index";

export default class Registbox extends Component {
  constructor() {
    super();
    this.state = {
      userin: "",
      pwdin: "",
      phonein: "",
      usertips: "",
      pwdtips: "",
      phonetips: ""
    };
  }

  //用户名输入框聚焦时显示提示信息
  userhandle(e) {
    // console.log(e.target.value)
    document.getElementsByClassName("usertips")[0].style.color = "#828282";
    this.setState({ usertips: "用户名由2-8个字符组成" });
  }

  //用户名输入框失焦时提示信息消失,验证用户名是否符合规则
  usertipsdel(e) {
    this.setState({ usertips: "" });
    if (e.target.value.length < 2 || e.target.value.length > 8) {
      document.getElementsByClassName("usertips")[0].style.color = "red";
      this.setState({ usertips: "用户名长度不符合规范" });
    } else {
      this.setState({ userin: e.target.value });
      axios
        .post("/checkUser", {
          username: e.target.value
        })
        .then(res => {
          if (res.data.length === 1) {
            this.setState({ usertips: "该用户名已经存在" });
            document.getElementsByClassName("usertips")[0].style.color = "red";
          } else {
            this.setState({ usertips: "该用户名可以使用" });
            document.getElementsByClassName("usertips")[0].style.color = "green";
          }
        })
        .catch(err => {
          console.log(err);
        });
    }
  }

  pwdhandle(e) {
    document.getElementsByClassName("pwdtips")[0].style.color = "#828282";
    this.setState({ pwdtips: "密码6-16位数组，字母，下划线组成，字母开头" });
  }

  pwdtipsdel(e) {
    this.setState({ pwdtips: "" });
    if (e.target.value.length < 6 || e.target.value.length > 16) {
      document.getElementsByClassName("pwdtips")[0].style.color = "red";
      this.setState({ pwdtips: "密码长度为6-16位" });
    } else {
      let reg = /^[a-zA-Z][\w]{5,15}$/;
      if (reg.test(e.target.value)) {
        this.setState({ pwdtips: "密码符合规范" });
        this.setState({ pwdin: e.target.value });
      } else {
        this.setState({ pwdtips: "密码不符合规范" });
        document.getElementsByClassName("pwdtips")[0].style.color = "red";
      }
    }
  }

  phonehandle() {
    document.getElementsByClassName("pwdtips")[0].style.color = "#828282";
    this.setState({ phonetips: "请输入11位手机号" });
  }

  phonetipsdel(e) {
    if (e.target.value.length !== 11) {
      document.getElementsByClassName("phonetips")[0].style.color = "red";
      this.setState({ phonetips: "请输入11位手机号" });
    } else {
      this.setState({ phonetips: "" });
      this.setState({ phonein: e.target.value });
      //验证手机号是否存在
      axios
        .post("/checkPhone", {
          phone: e.target.value
        })
        .then(res => {
          if (res.data.length === 1) {
            this.setState({ phonetips: "该手机号已经被注册" });
            document.getElementsByClassName("phonetips")[0].style.color = "red";
          } else {
            this.setState({ phonetips: "该手机号可使用" });
            document.getElementsByClassName("phonetips")[0].style.color = "green";
            this.setState({ phonein: e.target.value });
          }
        })
        .catch(err => {
          console.log(err);
        });
    }
  }

  render() {
    return (
      <>
        <div>用户名:</div>
        <Input
          className='userinput'
          size='large'
          placeholder='请输入用户名'
          prefix={<UserOutlined />}
          style={{ marginTop: "10px" }}
          onFocus={this.userhandle.bind(this)}
          onBlur={this.usertipsdel.bind(this)}
        />
        <p className='usertips'>{this.state.usertips}</p>
        <div>密码:</div>
        <Input.Password className='pwdinput' placeholder='请输入密码' style={{ padding: "7px", marginTop: "10px" }} onFocus={this.pwdhandle.bind(this)} onBlur={this.pwdtipsdel.bind(this)} />
        <p className='pwdtips'>{this.state.pwdtips}</p>
        <div>手机号:</div>
        <Input className='phoneinput' placeholder='请输入手机号码' style={{ padding: "7px", marginTop: "10px" }} onFocus={this.phonehandle.bind(this)} onBlur={this.phonetipsdel.bind(this)} />
        <p className='phonetips'>{this.state.phonetips}</p>
      </>
    );
  }
}
