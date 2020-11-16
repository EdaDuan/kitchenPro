import React from "react";
import { withRouter } from "react-router-dom";

class ListItem extends React.Component {
  // 跳转到细节页面的接口，使用push方法跳转
  goDetail = id => {
    this.props.history.push({ pathname: `/detail/${id}` });
  };

  //收藏商品的函数
  collect = (collectstate, foodsid, e) => {
    e.stopPropagation();
    //9.19 需要判断用户登录了没有,如果登录了拿到用户id和该菜品的id
    let userid = localStorage.getItem("userid");
    //如果没有登录，则提示先登录。
    if (!userid) {
      alert("请先进行登录");
    } else {
      //根据现在的iscollect的状态，来执行父组件的收藏或取消收藏的函数
      // console.log("收藏状态:", collectstate, "菜品id：", foodsid, "用户id", userid);
      if (collectstate === 0) {
        //调用收藏函数
        this.props.handleCollect(userid, foodsid);
      } else if (collectstate === 1) {
        //调用取消收藏
        this.props.cancelCollect(userid, foodsid);
      }
    }
  };

  render() {
    let { item } = this.props;
    return (
      <React.Fragment>
        <div
          className='list-item'
          onClick={() => {
            this.goDetail(item.id);
          }}
        >
          <div className='imgbox'>
            <div className='mask'></div>
            <div
              className='colection'
              onClick={e => {
                this.collect(item.iscollect, item.id, e);
              }}
            >
              {item.iscollect === 1 ? "取消收藏" : "立即收藏"}
            </div>
            <img src={item.src} alt='' />
          </div>
          <div className='user-info'>
            <img src={item.u_src} alt='用户头像'></img>
            <p title={item.u_name}>{item.u_name}</p>
          </div>
          <div className='foods-info'>
            <h3>{item.name}</h3>
            <p>{item.des}</p>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default withRouter(ListItem);
