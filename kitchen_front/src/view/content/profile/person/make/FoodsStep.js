import React from "react";
import StepItem from "./StepItem";
import { Button } from "antd";
export default class FoodsStep extends React.Component {
  constructor() {
    super();
    // 把子组件state保存在父组件的itemObj中，这样在make中就可以直接拿到此组件的state.itemObj
    this.itemArr = [];
    this.state = {
      count: 3
    };
  }

  // 根据count循环渲染步骤列表
  loopRender = () => {
    let itemArr = [];
    for (let i = 0; i < this.state.count; i++) {
      itemArr.push(<StepItem key={i + 1} ref={e => (this.itemArr[i] = e)} order={i + 1}></StepItem>);
    }
    return itemArr;
  };

  //新增一列
  add = () => {
    this.setState({
      count: this.state.count + 1
    });
  };

  render() {
    return (
      <div id='foods-step'>
        <h1 style={{ fontWeight: "600", color: "gray", paddingTop: "20px" }}>步骤</h1>
        {/* 循环渲染步骤列表 */}
        <div className='step'>
          {this.loopRender()}
          <Button type='default' className='add-step' onClick={this.add}>
            增加一个步骤
          </Button>
        </div>
        <hr style={{ width: "600px", margin: "20px 0" }}></hr>
      </div>
    );
  }
}
