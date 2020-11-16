import React, { Component } from "react";
import News from "./News.js";
import Upload from "./Upload.js";
import Nologin from "./Nologin.js";
import axios from "../../../../axios/index.js";
// 注意！分享大厅内容展示依靠Show组件，通过Nav组件传过来的key值判断渲染的组件，通过localStorage判断渲染组件的内容
// 全部分享和我的分享是axios请求数据库返回不同参数再传给News组件，map循环渲染达到不同的效果
// 上传分享则是渲染另一个组件Upload
export default class Show extends Component {
  constructor() {
    super();
    this.state = {
      // 用来渲染News组件
      list: []
    };
  }
  // Show组件挂载好之后调用，默认请求所有分享数据
  componentDidMount() {
    axios.get("/showShare", {}).then(res => {
      this.setState({
        list: res.data
      });
    });
  }
  // props值变化时调用，判断参数nextProps的值决定请求分享数据
  componentWillReceiveProps(nextProps) {
    if (nextProps.who === "全部分享") {
      axios
        .get("/showShare", {
          params: {}
        })
        .then(res => {
          this.setState({
            list: res.data
          });
        });
    } else if (nextProps.who === "我的分享") {
      axios
        .get("/showOwn", {
          params: {
            id: localStorage.getItem("userid")
          }
        })
        .then(res => {
          this.setState({
            list: res.data
          });
        });
    } else {
      // 上传分享组件不需要list渲染，所以直接给list一个值，以便之后做判断
      this.setState({
        list: ["upload"]
      });
    }
  }

  showWho() {
    // console.log(this.state.list)
    // 因为在全部分享和我的分享选项下得到的list是对象数组，第一个元素是对象，而上传分享第一个元素我定义的uoload，如果没有登录则没有localStorage，就会在我的分享中渲染Nologin组件，由此可做判断渲染哪个组件
    if (this.state.list[0] === "upload") {
      return <Upload />;
    } else if (this.state.list[0] === "nologin") {
      return <Nologin />;
    } else {
      // render函数中调用，用于循环渲染组件News
      const listItems = this.state.list.map((item, index) => {
        return <News item={item} key={item.id} index={index} deledshare={this.deledshare.bind(this)} />;
      });
      return listItems;
    }
  }
  // 在News组件删除后重新获取share表数据，并将值传给父组件Show的deledshare函数，函数再将值赋给list，重新渲染News组件
  deledshare(e) {
    this.setState({
      list: e
    });
  }

  render() {
    return <div style={{ minHeight: "400px" }}>{this.showWho()}</div>;
  }
}
