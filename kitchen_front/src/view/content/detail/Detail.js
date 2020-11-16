import React, { Component } from "react";
import EmptyBox from "../../header/topnavchild/EmptyBox";
import TopNav from "../../header/TopNav";
import DWrap from "./D_Wrap";

const backStyle = {
  width: "100px",
  height: "50px",
  lineHeight: "50px",
  marginLeft: "8%",
  textAlign: "center",
  fontSize: "20px",
  color: "#fdc691",
  cursor: "pointer"
};

export default class Detail extends Component {
  showDetail() {
    // console.log(this.props.match.params);
    if (this.props.match.params) {
      return <DWrap url={this.props.match.params} />;
    } else {
      return <div>没有详情信息</div>;
    }
  }
  render() {
    return (
      <React.Fragment>
        <TopNav></TopNav>
        <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
        <p style={backStyle} onClick={this.props.history.goBack}>
          &lt;&lt;返回
        </p>
        {this.showDetail()}
      </React.Fragment>
    );
  }
}
