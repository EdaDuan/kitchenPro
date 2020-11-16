import React, { Component } from "react";
import TopNav from "../../header/TopNav";
import ReactFullpage from "@fullpage/react-fullpage";
import axios from "../../../axios";
// import '../../../css/home/head.css';
import Banner from "./Banner";
import HomeFood from "./HomeFood";
import HomeStory from "./HomeStory";

class Home extends Component {
  constructor() {
    super();
    this.state = {
      bannerArr: []
    };
  }
  // 请求数据 获取菜品信息
  getdatabanners() {
    let url = "/getBanner";
    axios.get(url).then(res => {
      this.setState({
        bannerArr: res.data
      });
    });
  }

  // 组件挂载之后
  componentDidMount() {
    this.getdatabanners();
  }
  render() {
    return (
      <React.Fragment>
        <TopNav></TopNav>
        <ReactFullpage
          id='home'
          //fullpage options
          loopBottom={true}
          scrollBar={true}
          licenseKey={"JakeQu"}
          scrollingSpeed={500} /* Options here */
          scrollHorizontally={true}
          navigation={true}
          slidesNavigation={true}
          scrollOverflowReset={true}
          render={({ state, fullpageApi }) => {
            return (
              <ReactFullpage.Wrapper>
                {/* 轮播图 */}
                <Banner bannerArr={this.state.bannerArr} />
                <HomeFood />
                <HomeStory />
                {/* <Three /> */}
              </ReactFullpage.Wrapper>
            );
          }}
        />
      </React.Fragment>
    );
  }
}

export default Home;
