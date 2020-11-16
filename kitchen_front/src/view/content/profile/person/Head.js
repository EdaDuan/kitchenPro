import React from "react";
import { Menu } from "antd";
import axios from "../../../../axios/index.js";

export default class Head extends React.Component {
  constructor() {
    super();
    this.state = {
      username: "",
      head: ""
    };
  }

  componentDidMount() {
    let id = localStorage.getItem("userid");
    if (id) {
      axios
        .get("/persononload", {
          params: {
            id
          }
        })
        .then(r => {
          this.setState({
            username: r.data[0].name,
            head: r.data[0].src
          });
        })
        .catch(e => {
          console.log(e);
        });
    }
  }

  handleClick = e => {
    this.props.getcurrentpage(e.key);
  };
  render() {
    return (
      <>
        <div className='nav'>
          <div className='user-info' style={{ backgroundColor: "lightblue" }}>
            <div className='head'>
              <img src={this.state.head} alt='' />
            </div>
            <p>{this.state.username} 的厨房</p>
          </div>

          <div className='btns'>
            <Menu onClick={this.handleClick} defaultSelectedKeys='collect' mode='horizontal'>
              <Menu.Item key='collect' className='btnitem'>
                我的收藏
              </Menu.Item>
              <Menu.Item key='make' className='btnitem'>
                制作菜谱
              </Menu.Item>
              <Menu.Item key='mine' className='btnitem'>
                我的作品
              </Menu.Item>
            </Menu>
          </div>
        </div>
      </>
    );
  }
}
