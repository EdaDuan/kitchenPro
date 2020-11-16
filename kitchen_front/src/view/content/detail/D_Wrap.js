import React, { Component } from "react";
import axios from "../../../axios";
// 样式
import "../../../css/detail/D_Wrap.css";
// 导入
import ShowFood from "./D_Con/ShowFood";
import Meterials from "./D_Con/Meterials";
// import Step from './D_Con/Step';
// const OtherComponent = React.lazy(() => import('./OtherComponent'));
const Step = React.lazy(() => import("./D_Con/Step"));
export default class D_Wrap extends Component {
  constructor() {
    super();
    this.state = {
      foodArr: [], //菜品详情,
      materialsArr: [], //材料详情
      stepArr: [],
      user: ""
    };
  }
  // 请求数据 获取菜品信息
  getdatafoods() {
    let url = "/getFood";
    axios
      .get(url, {
        params: {
          id: this.props.url.id
        }
      })
      .then(res => {
        this.setState({
          foodArr: res.data
        });
      });
  }
  // 请求数据 获取用户信息
  getdatauser() {
    let url = "/getUser";
    axios
      .get(url, {
        params: {
          id: this.props.url.id
        }
      })
      .then(res => {
        // console.log(res.data[0])
        this.setState({
          user: res.data[0]
        });
      });
  }
  // 请求数据 获取材料信息
  getdatamaterials() {
    let url = "/getMaterials";
    axios
      .get(url, {
        params: {
          fid: this.props.url.id
        }
      })
      .then(res => {
        this.setState({
          materialsArr: res.data
        });
      });
  }
  // 请求数据 获取步骤信息
  getdatastep() {
    let url = "/getStep";
    axios
      .get(url, {
        params: {
          fid: this.props.url.id
        }
      })
      .then(res => {
        // console.log(res.data);
        this.setState({
          stepArr: res.data
        });
      });
  }
  // 组件挂载之后
  componentDidMount() {
    this.getdatafoods();
    this.getdatamaterials();
    this.getdatastep();
    this.getdatauser();
  }
  render() {
    return (
      <React.Suspense fallback={<div>Loading...</div>}>
        <div id='detail'>
          <ShowFood foodArr={this.state.foodArr} user={this.state.user} />
          <Meterials materialsArr={this.state.materialsArr} />
          <Step stepArr={this.state.stepArr} />
        </div>
      </React.Suspense>
    );
  }
}
