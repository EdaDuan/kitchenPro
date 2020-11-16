import React, { Component } from "react";
import { withRouter } from "react-router-dom";
import Logo from "./topnavchild/Logo";
import SearchBox from "./topnavchild/SearchBox";
import Menu from "./topnavchild/Menu";
import Login from "./topnavchild/Login";
import "../../css/TopNav.css";

class TopNav extends Component {
  constructor() {
    super();
    this.state = {
      currentlogo: "one",
      currentbackcolor: "transparent",
      currentcolor: "white",
      boxopacity: 0
    };
  }

  componentDidMount() {
    let currentpath = this.props.location.pathname;
    // 如果当前路由中包含/home字符串
    if (currentpath.indexOf("/home") !== -1 || currentpath === "/") {
      this.setState({
        currentlogo: "one",
        currentbackcolor: "transparent",
        currentcolor: "white",
        boxopacity: 0
      });
    } else {
      this.setState({
        currentlogo: "two",
        currentbackcolor: "white",
        currentcolor: "black",
        boxopacity: 1
      });
    }
  }

  render() {
    const state = this.state;
    return (
      <React.Fragment>
        {/* 模式1：背景透明，字体白色，logo白色,不显示搜索框
            模式2：背景白色，字体黑色，logo红色, 显示搜索框
        */}
        <div id='topnavbox' style={{ backgroundColor: state.currentbackcolor }}>
          <div id='topnav'>
            <Logo currentlogo={state.currentlogo}></Logo>
            <SearchBox boxopacity={state.boxopacity}></SearchBox>
            <Menu currentcolor={state.currentcolor}></Menu>
            <Login currentcolor={state.currentcolor}></Login>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default withRouter(TopNav);
