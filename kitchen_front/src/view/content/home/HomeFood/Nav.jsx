import React, { Component } from 'react'
import { Menu } from 'antd'
import '../../../../css/home/Nav.css'

class Nav extends Component {
  toPage(e) {
    // 修改父组件中的方法
    this.props.app.changeCont(e)
  }
  render() {
    return (
      <div className="foodChoose">
        <Menu onClick={this.toPage.bind(this)} defaultSelectedKeys="breakfast">
          <Menu.Item key="breakfast">美味早餐</Menu.Item>
          <Menu.Item key="lunch">经典午餐</Menu.Item>
          <Menu.Item key="dinner">简单晚餐</Menu.Item>
        </Menu>
      </div>
    )
  }
}

export default Nav
