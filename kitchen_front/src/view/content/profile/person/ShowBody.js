import React, { Component } from "react";
import MyCollect from "./MyCollect";
import Make from "./Make";
import MyProduct from "../person/MyProduct";

export default class Body extends Component {
  constructor(props) {
    super(props);
    this.state = {
      current: props.currentpage
    };
  }

  // 只在加载的时候执行一次
  componentDidMount() {
    // console.log(this.state.current);
  }

  componentDidUpdate(prevProps, prevState) {
    if (prevProps.currentpage !== this.props.currentpage) {
      this.setState({
        current: this.props.currentpage
      });
    }
  }

  // 上传菜谱之后跳转到我的作品页面方法
  goMyProduct = () => {
    this.setState({
      current: "mine"
    });
  };

  render() {
    return (
      <div className='showbody'>
        {this.state.current === "collect" ? <MyCollect></MyCollect> : this.state.current === "make" ? <Make goMyProduct={this.goMyProduct}></Make> : <MyProduct></MyProduct>}
      </div>
    );
  }
}
