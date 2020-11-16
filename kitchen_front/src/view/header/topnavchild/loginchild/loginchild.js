import React, { Component } from "react";
import { Modal, Button } from "antd";
import { withRouter } from "react-router-dom";
import Loginbox from "./loginbox";
import Registbox from "./registbox";
import "../../../../css/login/login.css";
import axios from "../../../../axios";
class LoginChild extends Component {
  constructor() {
    super();
    this.state = {
      loading: false,
      visible: false,
      box: true,
      logininf: "登录注册",
      flag: "login",
      img: ""
    };
  }

  componentDidMount() {
    this.islogin();
  }

  islogin() {
    if (localStorage.getItem("user")) {
      this.setState({ logininf: `欢迎你 ${localStorage.getItem("user").split('"').join("")}` });
      document.getElementsByClassName("userhead")[0].style.display = "block";
      document.getElementsByClassName("clearuser")[0].style.display = "inline-block";
      document.getElementsByClassName("userimg")[0].src = localStorage.getItem("userhead").split('"').join("");
    }
  }

  login() {
    this.setState({ box: true, flag: "login" });
    document.getElementsByClassName("changebtn")[0].innerHTML = "登录";
    document.getElementsByClassName("regist")[0].style.backgroundColor = "white";
    document.getElementsByClassName("login")[0].style.backgroundColor = "#EBCD55";
  }
  regist() {
    this.setState({ box: false, flag: "regist" });
    document.getElementsByClassName("changebtn")[0].innerHTML = "注册";
    document.getElementsByClassName("login")[0].style.backgroundColor = "white";
    document.getElementsByClassName("regist")[0].style.backgroundColor = "#EBCD55";
  }
  clearuser = () => {
    localStorage.clear();
    this.setState({ logininf: "登录/注册" });
    this.setState({ visible: false });
    document.getElementsByClassName("clearuser")[0].style.display = "none";
    this.props.history.replace({ pathname: "/home" });
  };

  showModal = () => {
    if (localStorage.getItem("user")) {
      this.setState({
        box: true,
        visible: false
      });
    } else {
      this.setState({
        box: true,
        visible: true
      });
    }
  };

  handleOk = () => {
    //登录
    if (this.state.flag === "login") {
      //获取用户的输入信息
      if (this.refs.login.state.usertips === "" && this.refs.login.state.pwdtips === "") {
        //验证用户名和密码是否正确
        axios
          .post("/userLogin", {
            username: this.refs.login.state.userin,
            password: this.refs.login.state.pwdin
          })
          .then(res => {
            if (res.data.length === 1) {
              alert("登录成功");
              localStorage.setItem("user", JSON.stringify(res.data[0].name));
              localStorage.setItem("userid", JSON.stringify(res.data[0].id));
              localStorage.setItem("userhead", JSON.stringify(res.data[0].src));
              this.setState({ logininf: `欢迎你 ${res.data[0].name}`, visible: false });
              document.getElementsByClassName("clearuser")[0].style.display = "inline-block";
              document.getElementsByClassName("userhead")[0].style.display = "block";
              document.getElementsByClassName("userimg")[0].src = res.data[0].src;
            } else {
              alert("用户名或密码错误");
            }
          })
          .catch(err => {
            console.log(err);
          });
      } else {
        alert("请输入正确的用户名或密码");
      }
    } else {
      //注册
      if (this.refs.regist.state.usertips === "该用户名可以使用" && this.refs.regist.state.pwdtips === "密码符合规范" && this.refs.regist.state.phonetips === "该手机号可使用") {
        //注册用户信息
        axios
          .post("/userRegist", {
            username: this.refs.regist.state.userin,
            pwd: this.refs.regist.state.pwdin,
            phone: this.refs.regist.state.phonein
          })
          .then(res => {
            if (res.data.affectedRows === 1) {
              alert("注册成功");
              this.setState({
                box: true,
                visible: true
              });
            }
          })
          .catch(err => {
            console.log(err);
          });
      } else {
        alert("请输入正确的注册信息");
      }
    }
  };

  handleCancel = () => {
    this.setState({ visible: false });
  };

  render() {
    const { visible, loading } = this.state;
    return (
      <>
        <div className='loginbox'>
          <div className='userhead'>
            <img src={this.img} className='userimg' alt='' />
          </div>
          <div className='changeclick' onClick={this.showModal} style={{ color: this.props.currentcolor }}>
            {this.state.logininf}
          </div>
          <div className='clearuser' style={{ color: this.props.currentcolor, display: "none", margin: "20px", cursor: "pointer" }} onClick={this.clearuser}>
            注销
          </div>
        </div>
        <Modal
          destroyOnClose
          visible={visible}
          onOk={this.handleOk}
          onCancel={this.handleCancel}
          footer={[
            <Button key='back' onClick={this.handleCancel} style={{ color: "#EBCD55" }}>
              取消
            </Button>,
            <Button className='changebtn' key='submit' type='primary' loading={loading} onClick={this.handleOk} style={{ color: "white", backgroundColor: "#EBCD55" }}>
              登录
            </Button>
          ]}
        >
          <div className='logintop'>
            <div className='login' onClick={this.login.bind(this)} style={{ backgroundColor: "#EBCD55" }}>
              登录
            </div>
            |
            <div className='regist' onClick={this.regist.bind(this)}>
              注册
            </div>
          </div>
          <div>{this.state.box ? <Loginbox ref='login'></Loginbox> : <Registbox ref='regist'></Registbox>}</div>
        </Modal>
      </>
    );
  }
}

export default withRouter(LoginChild);
