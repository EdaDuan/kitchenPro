import React, { Component } from "react";
import { Button } from "antd";
import { withRouter } from "react-router-dom";
import { CoffeeOutlined, FieldTimeOutlined, CodepenOutlined } from "@ant-design/icons";

import "../../../../css/detail/ShowFood.css";

class ShowFood extends Component {
  constructor(props) {
    super(props);
    this.state = {
      foodData: props.foodArr
    };
  }
  static getDerivedStateFromProps(props, state) {
    return { foodData: props.foodArr };
  }

  btnValue = e => {
    let word = e.target.innerHTML.replace(/\s+/g, "");
    this.props.history.push({ pathname: `/search/${word}` });
  };

  getFoodItems() {
    if (this.props.foodArr.length === 0) {
      return "";
    } else {
      return this.state.foodData.map(item => {
        return (
          <div key={item.id} className='foodShow'>
            <p className='foodShowName'>
              <span>食谱.</span>
              {item.name}
            </p>
            <div className='show'>
              <div className='foodShowImg'>
                <img src={item.src} alt='图片加载失败' />
              </div>
              <div className='foodPro'>
                <span>
                  <CoffeeOutlined />
                  普通
                </span>
                <span>
                  <FieldTimeOutlined />
                  30分钟
                </span>
                <span>
                  <CodepenOutlined /> 家常咸鲜
                </span>
                <div>
                  <Button type='primary' shape='circle' size='large' onClick={this.btnValue}>
                    新鲜
                  </Button>
                  <Button type='primary' shape='circle' size='large' onClick={this.btnValue}>
                    香辣
                  </Button>
                  <Button type='primary' shape='circle' size='large' onClick={this.btnValue}>
                    午餐
                  </Button>
                  <Button type='primary' shape='circle' size='large' onClick={this.btnValue}>
                    下饭菜
                  </Button>
                </div>
                <Button className='coll' type='primary' size='large'>
                  收藏
                </Button>
                <div className='showfooddes'>
                  <p>
                    <img src={this.props.user.src} alt='' />
                    {this.props.user.name}
                  </p>
                  <p>{item.des}</p>
                </div>
              </div>
            </div>
          </div>
        );
      });
    }
  }
  render() {
    return <React.Fragment>{this.getFoodItems()}</React.Fragment>;
  }
}
export default withRouter(ShowFood);
