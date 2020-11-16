import React, { Component } from "react";
//HashRouter 使用的hash模式。BrowserRouter 使用history模式
//import {HashRouter as Router,Route} from 'react-router-dom';
// import { BrowserRouter as Router, Route } from "react-router-dom";
import { Router, Route } from "react-router-dom";

import { createHashHistory } from "history";
import "antd/dist/antd.css";
import "./css/App.css";
import { BackTop } from "antd";

// 主内容的大组件
import Home from "./view/content/home/Home";
import Search from "./view/content/search/Search";
import Recipe from "./view/content/recipe/Recipe";
import Share from "./view/content/share/Share";
import Profile from "./view/content/profile/Profile";
import About from "./view/content/about/About";
import Detail from "./view/content/detail/Detail";
import Story from "./view/content/home/HomeStory/Story";

const history = createHashHistory();
// const history = createBrowserHistory();

export default class App extends Component {
  render() {
    return (
      <React.Fragment>
        <div id='app'>
          <Router history={history}>
            {/* 首页 */}
            <Route exact path='/' component={Home}></Route>
            <Route exact path='/home' component={Home}></Route>
            {/* 搜索 */}
            <Route exact path='/search/:kw' component={Search}></Route>
            {/* 食谱 */}
            <Route exact path='/recipe' component={Recipe}></Route>
            {/* 分享大厅 */}
            <Route exact path='/share' component={Share}></Route>
            {/* 个人中心 */}
            <Route exact path='/profile' component={Profile}></Route>
            {/* 关于我们 */}
            <Route exact path='/about' component={About}></Route>
            {/* 食谱详情 */}
            <Route exact path='/detail/:id' component={Detail}></Route>
            {/* 厨房故事 */}
            <Route exact path='/story/:id' component={Story}></Route>
          </Router>
          <BackTop visibilityHeight={500} />
        </div>
      </React.Fragment>
    );
  }
}
