import React, { Component } from "react";
import HotKeyWord from "./HotKeyWord";
import ListItem from "./ListItem";
import axios from "../../../axios";
import { Menu } from "antd";

export default class Searchcontent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      kw: props.keyword,
      foodsList: [],
      sortmode: "default"
    };
  }

  static getDerivedStateFromProps(props, state) {
    return { kw: props.keyword };
  }

  // 请求数据的函数
  getFoodsList = () => {
    //如果用户登录了，拿到用户的id，如果用户没有登录，传递一个空的字符串，在服务器上再进行判断
    // 让用户在没有登录的情况下也能查询数据出来
    let userid = localStorage.getItem("userid") || "";
    let keyword = this.state.kw;
    axios
      .post("/getFoodsByKeyWord", {
        userid,
        keyword
      })
      .then(res => {
        // 如果目前是默认排序，则查询结果也默认排序进行输出
        if (this.state.sortmode === "default") {
          this.setState({
            foodsList: res.data
          });
        } else if (this.state.sortmode === "time") {
          // 如果目前是按最近上传排序，则查询结果也按最近上传排序
          let result = res.data.sort((a, b) => {
            return Date.parse(this.GMTToStr(b.time)) - Date.parse(this.GMTToStr(a.time));
          });
          this.setState({
            foodsList: result
          });
        } else {
          // 方便以后添加更多形式的排序
          this.setState({
            foodsList: res.data
          });
        }
      })
      .catch(err => console.log(err));
  };

  // 格林威治时间转化
  GMTToStr(time) {
    let date = new Date(time);
    let Str = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
    return Str;
  }

  //处理点击排序的函数
  handleSortClick = e => {
    let foodList = this.state.foodsList;
    // 如果点击默认排序，则按id排序
    if (e.key === "default") {
      foodList.sort((a, b) => a.id - b.id);
      this.setState({
        sortmode: e.key,
        foodsList: foodList
      });
    } else if (e.key === "time") {
      //点击最近上传，按照时间进行排序
      foodList.sort((a, b) => {
        return Date.parse(this.GMTToStr(b.time)) - Date.parse(this.GMTToStr(a.time));
      });
      this.setState({
        sortmode: e.key,
        foodsList: foodList
      });
    }
  };

  // 只会在挂载的时候执行一次
  componentDidMount() {
    this.getFoodsList();
  }
  // 每次更新的时候都会执行;
  componentDidUpdate(prevProps, prevState) {
    if (prevProps.keyword !== this.state.kw) {
      this.getFoodsList();
    }
  }

  //一个点击收藏的函数,根据用户id和菜品来进行增添记录
  async handleCollect(userid, foodsid) {
    let result = await axios
      .get("/handleCollect", {
        params: {
          userid,
          foodsid
        }
      })
      .then(
        res => res.data,
        err => err
      );

    if (result === 1) {
      //如果成功添加，则重新获取最新的数据
      this.getFoodsList();
    } else {
      alert("不好意思，服务器开小差了");
    }
  }

  //一个点击取消收藏的函数，根据用户id和菜品来进行增添记录
  async cancelCollect(userid, foodsid) {
    let result = await axios
      .get("/cancelCollect", {
        params: {
          userid,
          foodsid
        }
      })
      .then(
        res => res.data,
        err => err
      );

    if (result === 1) {
      //如果成功添加，则重新获取最新的数据
      this.getFoodsList();
    } else {
      alert("不好意思，服务器开小差了");
    }
  }

  render() {
    return (
      <React.Fragment>
        <div id='search'>
          <div id='search-content'>
            {/* 热门分类 */}
            <HotKeyWord></HotKeyWord>
            {/* 展示部分 */}
            <h1>{this.state.kw === "all" ? "为您推荐" : this.state.kw}</h1>
            <Menu onClick={this.handleSortClick} mode='horizontal' defaultSelectedKeys={this.state.sortmode} style={{ marginBottom: "20px" }}>
              <Menu.Item key='default'>默认排序</Menu.Item>
              <Menu.Item key='time'>最近上传</Menu.Item>
            </Menu>

            <div className='show-list'>
              {this.state.foodsList.length === 0 ? (
                <img alt='搜索商品不存在' style={{ width: "100%" }} src={require("../../../images/none.png")}></img>
              ) : (
                this.state.foodsList.map(item => {
                  return <ListItem item={item} key={item.id} handleCollect={this.handleCollect.bind(this)} cancelCollect={this.cancelCollect.bind(this)}></ListItem>;
                })
              )}
            </div>
          </div>
          {/* {Date.parse("2020-6-16 00:00:20")} */}
        </div>
      </React.Fragment>
    );
  }
}
