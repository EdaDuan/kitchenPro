import React, { Component } from "react";
import EmptyBox from "../../header/topnavchild/EmptyBox";
import TopNav from "../../header/TopNav";
import Footer from "../footer/Footer";
// import RecipeMenu from "./RecipeMenu";
import RecipeContent from "./RecipeContent";
import { Pagination } from "antd";
import axios from "axios";
import "./Recipe.css";
export default class Recipe extends Component {
  constructor() {
    super();
    this.state = {
      menuData: [],
      total: 0,
      currentPage: 1,
      pageSize: 12,
      todayRecommend: "蒜蓉粉丝蒸龙利鱼"
    };
    this.onChange = this.onChange.bind(this);
    this.getIt = this.getIt.bind(this);
  }

  componentWillMount() {
    axios
      .post("/getFoodsByKeyWord", {
        keyword: ""
      })
      .then(res => {
        this.setState({
          menuData: res.data,
          total: res.data.length
        });
      })
      .catch(err => {
        console.log(err);
      });
  }

  onChange(page, pageSize) {
    this.setState({
      currentPage: page
    });
  }
  getIt(e) {
    this.props.history.push({
      pathname: `/detail/${e.currentTarget.getAttribute("data-id")}`
    });
  }
  render() {
    return (
      <React.Fragment>
        <TopNav> </TopNav> <EmptyBox> 这是一个空盒子， 不要动他 </EmptyBox>
        <div style={{ height: "1300px", margin: "0 auto", width: "960px" }}>
          {/* <RecipeMenu> </RecipeMenu> */}

          <div id='contain1'>
            <h1 data-title={"今日最佳——" + this.state.todayRecommend}>今日最佳——{this.state.todayRecommend}</h1>
          </div>
          <div data-id='1' className='banner' onClick={this.getIt}></div>
          <div className='space'></div>
          <h2 className='title'> 全部食谱 </h2>
          <RecipeContent getIt={this.getIt} menuData={this.state.menuData} currentPage={this.state.currentPage} pageSize={this.state.pageSize}></RecipeContent>

          <Pagination onChange={this.onChange} defaultCurrent={1} total={this.state.total} defaultPageSize={this.state.pageSize} showSizeChanger={false} hideOnSinglePage={true} />
        </div>
        <Footer></Footer>
      </React.Fragment>
    );
  }
}
