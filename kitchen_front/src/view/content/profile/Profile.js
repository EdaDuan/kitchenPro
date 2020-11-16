import React, { Component } from "react";
import EmptyBox from "../../header/topnavchild/EmptyBox";
import { withRouter } from "react-router-dom";
import TopNav from "../../header/TopNav";
import Content from "./person/Content.js";
import Footer from "../footer/Footer";
class Profile extends Component {
  componentDidMount() {
    if (!localStorage.getItem("userid")) {
      alert("请先登录");
      this.props.history.goBack();
    }
  }

  render() {
    return (
      <React.Fragment>
        <div id='profile'>
          <TopNav></TopNav>
          <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
          {/* 我的收藏 */}
          {/* <MyCollect></MyCollect> */}
          <Content />
        </div>
        <Footer></Footer>
      </React.Fragment>
    );
  }
}

export default withRouter(Profile);
