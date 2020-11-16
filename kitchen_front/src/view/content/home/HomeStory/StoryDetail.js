import React, { Component } from "react";
import axios from "../../../../axios";
import "../../../../css/home/StoryDetail.css";
export default class StoryDetail extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showArr: [],
      storyArr: [], //厨房故事详情,
      uid: "",
      userData: []
    };
  }
  // 获取顶部图片
  getData() {
    axios
      .get("/getFoodsStory", {
        params: {
          sid: this.props.sid
        }
      })
      .then(res => {
        this.setState({
          showArr: res.data,
          uid: res.data[0].u_id
        });
        axios
          .get("/getUser", {
            params: {
              id: this.state.uid
            }
          })
          .then(res => {
            // console.log(res.data)
            this.setState({
              userData: res.data
            });
          });
      });
  }
  // 请求数据 获取厨房故事信息
  getdatastorys() {
    let url = "/getStoryDetail";
    axios
      .get(url, {
        params: {
          fs_id: this.props.sid
        }
      })
      .then(res => {
        // console.log(res.data);
        this.setState({
          storyArr: res.data
        });
      });
  }
  // 厨房故事展示
  show() {
    let sArr = this.state.showArr[0];
    let user = this.state.userData[0];
    if (sArr && user) {
      // console.log(sArr);
      return (
        <div>
          <div className='detailTitle'>
            厨房故事.
            <span>{sArr.name}</span>
          </div>
          <div className='img'>
            <img style={{ width: "600px", height: "400px" }} src={sArr.src} alt=''></img>
          </div>

          <div className='person'>
            <img className='header' src={user.src} alt='' />
            <span>{user.name}</span>
            <p>{sArr.descstory}</p>
          </div>
        </div>
      );
    }
  }
  // 厨房故事介绍
  getStoryItem() {
    return this.state.storyArr.map(item => {
      return (
        <div key={item.id}>
          <div className='showPro'>
            <p>{item.storydesstep}</p>
            <div className='img'>
              <img src={item.storydessrc} alt='' />
            </div>
          </div>
        </div>
      );
    });
  }
  // 组件挂载之后
  componentDidMount() {
    this.getData();
    this.getdatastorys();
    window.scrollTo(0, 0);
  }
  render() {
    return (
      <React.Fragment>
        <div className='storyDetail'>
          {this.show()}
          {this.getStoryItem()}
        </div>
      </React.Fragment>
    );
  }
}
