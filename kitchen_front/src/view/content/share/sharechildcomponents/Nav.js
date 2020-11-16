import React, { Component } from "react";
import { Menu } from "antd";
import "../../../../css/share/nav.css";
export default class Share extends Component {
  // 传递Item的key值给父组件Share
  card(e) {
    this.props.show(e.key);
  }

  render() {
    return (
      <>
        {/*antd菜单组件，每个Item必须绑定key，绑定点击事件传递key值给Share组件*/}
        <Menu mode='horizontal' defaultSelectedKeys={["全部分享"]} onClick={this.card.bind(this)}>
          <Menu.Item key='全部分享'>全部分享</Menu.Item>
          <Menu.Item key='我的分享'>我的分享</Menu.Item>
          <Menu.Item key='上传分享'>上传分享</Menu.Item>
        </Menu>
      </>
    );
  }
}
