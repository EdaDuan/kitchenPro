import React, { Component } from "react";
import "../../../../css/share/comment.css";
import axios from "../../../../axios/index.js";
export default class Comment extends Component {
  // 如果News组件传过来的u_id(就是comment表里的u_id)等于localStorage存储的userid，表明是该用户发表的评论，则该用户获得删除评论的权限，所以在评论之后追加一个删除按钮
  delbtn(e) {
    if (e.toString() === localStorage.getItem("userid")) {
      return (
        <span className='delbtn' onClick={this.delcom.bind(this, this.props.item.id)}>
          删除
        </span>
      );
    } else {
      return null;
    }
  }
  // 删除评论之后重新获取评论，将返回数据传给父组件News重新渲染comment
  delcom(e) {
    axios
      .get("/delComment", {
        params: {
          id: e
        }
      })
      .then(res => {
        axios
          .get("/getComment", {
            params: {
              share_id: this.props.tips
            }
          })
          .then(res => {
            this.props.fresh(res.data);
          });
      });
  }

  render() {
    return (
      <>
        <div className='comtips'>
          <img src={this.props.item.src} className='comhead' alt='' />
          <span>{this.props.item.name}: </span>
          <span className='comments'>{this.props.item.comments}</span>
          {this.delbtn(this.props.item.u_id)}
        </div>
      </>
    );
  }
}
