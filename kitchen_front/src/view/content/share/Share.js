import React, { Component } from "react";
import EmptyBox from "../../header/topnavchild/EmptyBox";
import TopNav from "../../header/TopNav";
import Nav from "./sharechildcomponents/Nav.js";
import Show from "./sharechildcomponents/Show.js";
import Footer from "../footer/Footer";
import "../../../css/share/share.css";

export default class Share extends Component {
  constructor() {
    super();
    this.state = {
      // 初始化组件，进入分享大厅就显示全部分享组件
      who: "全部分享"
    };
  }
  // 通过Nav组件传过来的值，再传给Show组件用来判断渲染的内容
  show(who) {
    this.setState({
      who: who
    });
  }

  render() {
    return (
      <>
        <div className='all'>
          <TopNav></TopNav>
          <div className='content'>
            {/*网页顶部的导航栏*/}
            <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
            {/*分享大厅导航菜单*/}
            <Nav show={this.show.bind(this)} />
            {/*分享大厅展示用户分享内容的组件*/}
            <Show who={this.state.who} />
          </div>
          <Footer></Footer>
        </div>
      </>
    );
  }
}
