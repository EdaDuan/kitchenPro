import React from "react";
import { Menu } from "antd";

class App extends React.Component {
  state = {
    current: "balance"
  };

  handleClick = e => {
    // console.log("click ", e);
    this.setState({ current: e.key });
  };

  render() {
    const { current } = this.state;
    return (
      <Menu onClick={this.handleClick} selectedKeys={[current]} mode='horizontal'>
        <Menu.Item key='balance'>综合最佳</Menu.Item>
        <Menu.Item key='collect'>收藏最多</Menu.Item>
        <Menu.Item key='browse'>浏览最多</Menu.Item>
      </Menu>
    );
  }
}

export default App;
