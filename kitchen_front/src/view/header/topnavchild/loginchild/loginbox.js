import React, { Component } from "react";
import { UserOutlined } from "@ant-design/icons";
import { Input } from "antd";

export default class Loginbox extends Component {
  constructor() {
    super();
    this.state = {
      userin: "",
      pwdin: "",
      usertips: "",
      pwdtips: ""
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
    }
  }

  pwdhandle(e) {
    // console.log(e.target.value)
    document.getElementsByClassName("pwdtips")[0].style.color = "#828282";
    this.setState({ pwdtips: "密码8-16位数组，字母，下划线组成，字母开头" });
  }

  pwdtipsdel(e) {
    this.setState({ pwdtips: "" });
    if (e.target.value.length < 6 || e.target.value.length > 16) {
      document.getElementsByClassName("pwdtips")[0].style.color = "red";
      this.setState({ pwdtips: "密码长度为6-16位" });
      // this.userflag = false;
    } else {
      this.setState({ pwdin: e.target.value });
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
      </>
    );
  }
}
