import React, { Component } from "react";
import "../../../../css/person/Content.css";
import Head from "./Head.js";
import ShowBody from "./ShowBody";
export default class Content extends Component {
  constructor() {
    super();
    this.state = {
      currentpage: "collect"
    };
  }

  getcurrentpage = current => {
    this.setState({
      currentpage: current
    });
  };

  render() {
    return (
      <React.Fragment>
        {/* 显示头像和切换导航 */}
        <Head getcurrentpage={this.getcurrentpage} />

        {/* 切换显示的页面 */}
        <ShowBody currentpage={this.state.currentpage}></ShowBody>
      </React.Fragment>
    );
  }
}
