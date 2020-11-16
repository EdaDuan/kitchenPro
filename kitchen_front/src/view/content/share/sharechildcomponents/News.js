import React, { Component } from "react";
import "../../../../css/share/news.css";
import { Image } from "antd";
import axios from "../../../../axios/index.js";
import { MessageOutlined, EllipsisOutlined } from "@ant-design/icons";
import Icon from "@ant-design/icons";
import Comment from "./Comment.js";

export default class News extends Component {
  constructor() {
    super();
    this.state = {
      // 控制评论的显示和隐藏
      flag: true,
      // 存储请求返回的评论
      arr: [],
      // 显示请求返回的评论，从arr里面取
      comment: [],
      // 判断是否拥有删除按钮
      have: "",
      // 控制省略按钮的开关状态
      istrue: false,
      // 用于存储点赞的用户
      liker: [],
      // 控制是否点赞的样式
      islike: false
    };
  }

  componentDidMount() {
    // News组件获取评论至arr，由于初始渲染的评论是关闭的，所以先放入arr数组存储，arr主要作用只是获取他的长度显示出来
    axios
      .get("/getComment", {
        params: {
          share_id: this.props.item.id
        }
      })
      .then(res => {
        this.setState({
          arr: res.data
        });
      });
    // News组件获取点赞用户至liker，用于过滤点赞的用户中是否有自己
    axios
      .get("/getLiker", {
        params: {
          s_id: this.props.item.id
        }
      })
      .then(res => {
        this.setState({
          liker: res.data
        });
      });
  }
  // News组件显示图片，并做到响应式布局
  isShowImg(e, t) {
    // 图片加载失败则显示fallback地址下的图片
    if (e === undefined) {
      return <Image width={600} height='auto' src='error' fallback='https://cdn.pixabay.com/photo/2020/08/27/13/11/loading-bar-5522019__340.png' />;
    } else {
      let arr = e.split(" ");
      if (arr[0] === "") {
        return null;
      } else if (arr.length === 1) {
        let list = arr.map((item, index) => {
          return (
            <div className='img1' key={index + "-" + t}>
              <Image height={450} src={item} style={{ position: "relative", top: "50%", left: "50%", transform: "translate(-50%,-50%)" }} />
            </div>
          );
        });
        return list;
      } else if (arr.length === 2) {
        let list = arr.map((item, index) => {
          return (
            <div className='img2' key={index + "-" + t}>
              <Image height={225} src={item} style={{ position: "relative", top: "50%", left: "50%", transform: "translate(-50%,-50%)" }} />
            </div>
          );
        });
        return list;
      } else {
        let list = arr.map((item, index) => {
          return (
            <div className='img3' key={index + "-" + t}>
              <Image height={150} src={item} style={{ position: "relative", top: "50%", left: "50%", transform: "translate(-50%,-50%)" }} />
            </div>
          );
        });
        return list;
      }
    }
  }
  // 点击查看所有评论，如果flag为true，将arr的值赋给comment，实现评论的展示，并将flag赋值为false；如果flag为false，将comment清空，实现评论关闭，并将flag变为true
  seecom() {
    if (this.state.flag) {
      this.setState({
        comment: this.state.arr,
        flag: !this.state.flag
      });
    } else {
      this.setState({
        comment: [],
        flag: !this.state.flag
      });
    }
  }
  // 点击发布按钮，如果用户已经登录，则添加评论，并在没有打开评论(flag==true)的情况下只添加进arr，在打开评论(flag==false)的情况下arr和comment都要添加；如果用户没登录则提示先登录
  release() {
    if (localStorage.getItem("userid")) {
      axios
        .get("/addComment", {
          params: {
            comment: document.getElementsByClassName("comment")[this.props.index].value,
            u_id: localStorage.getItem("userid"),
            share_id: this.props.item.id
          }
        })
        .then(res => {
          axios
            .get("/getComment", {
              params: {
                share_id: this.props.item.id
              }
            })
            .then(res => {
              if (this.state.flag) {
                this.setState({
                  arr: res.data
                });
              } else {
                this.setState({
                  comment: res.data,
                  arr: res.data
                });
              }
            });
          // 每次点击了发布按钮将input内容清空
          document.getElementsByClassName("comment")[this.props.index].value = "";
        });
    } else {
      alert("请先登录！");
    }
  }
  // 删除评论之后，在子组件重新请求数据并传过来，当flag为true时评论没有打开，则添加进arr只显示评论条数；反之评论条数和评论内容都要显示
  accept(e) {
    if (this.state.flag) {
      this.setState({
        arr: e
      });
    } else {
      this.setState({
        comment: e,
        arr: e
      });
    }
  }
  // 渲染评论的函数，根据comment数组的内容map循环渲染
  showComment() {
    let list = this.state.comment.map(item => {
      return <Comment item={item} key={item.id} fresh={this.accept.bind(this)} tips={this.props.item.id} />;
    });
    return list;
  }
  // flag为true时，News显示查看arr.length评论，反之显示收起arr.length评论，所以再次证实arr是用来显示评论长度的
  changeShow() {
    if (this.state.flag) {
      return <span>查看</span>;
    } else {
      return <span>收起</span>;
    }
  }
  // News组件右上角的省略按钮，用于管理分享，点击之后，如果该News是自己发布的，则将have变为true，反之则变为false，后面会有解释
  havedel() {
    if (this.props.item.u_id.toString() === localStorage.getItem("userid")) {
      this.setState({
        have: true
      });
    } else {
      this.setState({
        have: false
      });
    }
    // istrue初始化为false，表示没有打开分享管理，点击省略按钮控制istrue进行开关切换
    this.setState({
      istrue: !this.state.istrue
    });
  }
  // 根据istrue判断是否渲染，如果为true则渲染分享管理列表，为false则渲染空值；根据have判断是否渲染删除按钮，逻辑是如果localStorage存储的userid等于分享的u_id则表示是该用户的分享，用户就有权限删除该分享，于是渲染删除按钮，反之则不渲染删除按钮
  showdel() {
    if (this.state.istrue) {
      if (this.state.have) {
        return (
          <div className='omit'>
            <div style={{ width: "100%", borderBottom: "1px solid #ccc", cursor: "pointer" }}>转发</div>
            <div style={{ width: "100%", cursor: "pointer" }} onClick={this.delshare.bind(this)}>
              删除
            </div>
          </div>
        );
      } else {
        return (
          <div className='omit'>
            <div style={{ width: "100%", borderBottom: "1px solid #ccc", cursor: "pointer" }}>转发</div>
          </div>
        );
      }
    } else {
      return null;
    }
  }
  // 删除分享后重新获取数据库的分享，并将返回的数组传给父组件Show重新渲染News组件
  delshare() {
    axios
      .get("/delShare", {
        params: {
          id: this.props.item.id
        }
      })
      .then(res => {
        if (res.data === 1) {
          axios
            .get("/showShare", {
              params: {}
            })
            .then(res => {
              this.props.deledshare(res.data);
            });
        }
      });
  }
  // 逻辑判断，用于区别用户点过赞和没点过赞的分享，由于Show组件里面循环渲染了News组件，News组件再使用循环渲染则会出现多个点赞图标，并且每一个用户点赞就会多一个图标，所以使用变量i存储状态。当一个分享的点赞数不为零时，如果i为1则表示该用户点过赞，渲染为红色，如果i为0表示其他用户点过赞，而该用户没有点赞；当一个分享点赞数为零时，直接渲染成灰色
  like() {
    // 自定义icon图标
    const HeartSvg = () => (
      <svg width='1em' height='1em' fill='currentColor' viewBox='0 0 1024 1024'>
        <path d='M923 283.6c-13.4-31.1-32.6-58.9-56.9-82.8-24.3-23.8-52.5-42.4-84-55.5-32.5-13.5-66.9-20.3-102.4-20.3-49.3 0-97.4 13.5-139.2 39-10 6.1-19.5 12.8-28.5 20.1-9-7.3-18.5-14-28.5-20.1-41.8-25.5-89.9-39-139.2-39-35.5 0-69.9 6.8-102.4 20.3-31.4 13-59.7 31.7-84 55.5-24.4 23.9-43.5 51.7-56.9 82.8-13.9 32.3-21 66.6-21 101.9 0 33.3 6.8 68 20.3 103.3 11.3 29.5 27.5 60.1 48.2 91 32.8 48.9 77.9 99.9 133.9 151.6 92.8 85.7 184.7 144.9 188.6 147.3l23.7 15.2c10.5 6.7 24 6.7 34.5 0l23.7-15.2c3.9-2.5 95.7-61.6 188.6-147.3 56-51.7 101.1-102.7 133.9-151.6 20.7-30.9 37-61.5 48.2-91 13.5-35.3 20.3-70 20.3-103.3 0.1-35.3-7-69.6-20.9-101.9z' />
      </svg>
    );
    const HeartIcon = props => <Icon component={HeartSvg} {...props} />;
    let i = 0;
    if (this.state.liker.length !== 0) {
      this.state.liker.forEach(item => {
        if (item.u_id.toString() === localStorage.getItem("userid")) {
          i = 1;
        }
      });
      if (i > 0) {
        return <HeartIcon style={{ color: "hotpink", fontSize: "18px" }} />;
      } else {
        return <HeartIcon style={{ color: "gray", fontSize: "18px" }} />;
      }
    } else {
      return <HeartIcon style={{ color: "gray", fontSize: "18px" }} />;
    }
  }

  changelike() {
    if (this.state.islike && localStorage.getItem("userid")) {
      axios
        .get("/addLike", {
          params: {
            u_id: localStorage.getItem("userid"),
            s_id: this.props.item.id
          }
        })
        .then(res => {
          this.setState({
            islike: !this.state.islike
          });
          axios
            .get("/getLiker", {
              params: {
                s_id: this.props.item.id
              }
            })
            .then(res => {
              this.setState({
                liker: res.data
              });
            });
        });
    } else if (this.state.islike === false && localStorage.getItem("userid")) {
      axios
        .get("/delLike", {
          params: {
            u_id: localStorage.getItem("userid"),
            s_id: this.props.item.id
          }
        })
        .then(res => {
          this.setState({
            islike: !this.state.islike
          });
          axios
            .get("/getLiker", {
              params: {
                s_id: this.props.item.id
              }
            })
            .then(res => {
              this.setState({
                liker: res.data
              });
            });
        });
    } else {
      alert("请先登录！");
    }
  }

  render() {
    return (
      <div className='news'>
        <div className='contanier'>
          <div className='box'>
            <div className='headbox'>
              <img src={this.props.item.src} className='headimg' alt='' />
            </div>
            <div className='tips'>
              <p>{this.props.item.name}</p>
              {/*处理数据库查询到的分享时间，以?/?/? ?:?:?形式输出*/}
              <span>{new Date(Date.parse(this.props.item.times)).toLocaleDateString() + " " + new Date(Date.parse(this.props.item.times)).toLocaleTimeString()}</span>
            </div>
          </div>
          <EllipsisOutlined style={{ fontSize: "20px", position: "absolute", top: "10px", right: "0", cursor: "pointer" }} onClick={this.havedel.bind(this)} />
          {this.showdel()}
          <p>{this.props.item.des}</p>
          <div className='showimg'>{this.isShowImg(this.props.item.img, this.props.item.times)}</div>
          <div className='tools'>
            <span style={{ cursor: "pointer" }} onClick={this.seecom.bind(this)}>
              <MessageOutlined style={{ marginRight: "3px" }} />
              {this.changeShow()}
              {this.state.arr.length}条评论
            </span>
            <span style={{ cursor: "pointer" }} onClick={this.changelike.bind(this)}>
              {this.like()}
              点赞
            </span>
          </div>
          <div className='comcontent'>{this.showComment()}</div>
          <div style={{ margin: "10px 0" }}>
            发布评论:
            <input className='comment' />
            <button className='release' onClick={this.release.bind(this)}>
              发布
            </button>
          </div>
        </div>
      </div>
    );
  }
}
