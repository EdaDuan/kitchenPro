import React, { Component } from "react";
import { NavLink } from "react-router-dom";

export default class Menu extends Component {
  render() {
    return (
      <React.Fragment>
        <div className='menu'>
          <NavLink activeClassName='active' to='/home' style={{ color: this.props.currentcolor, borderColor: this.props.currentcolor }}>
            首页
          </NavLink>
          <NavLink activeClassName='active' to='/recipe' style={{ color: this.props.currentcolor }}>
            菜谱
          </NavLink>
          <NavLink activeClassName='active' to='/share' style={{ color: this.props.currentcolor }}>
            分享大厅
          </NavLink>
          <NavLink activeClassName='active' to='/about' style={{ color: this.props.currentcolor }}>
            关于我们
          </NavLink>
          <NavLink activeClassName='active' to='/profile' style={{ color: this.props.currentcolor }}>
            个人中心
          </NavLink>
        </div>
      </React.Fragment>
    );
  }
}

// menu默认字体颜色
Menu.defaultProps = {
  currentcolor: "white"
};
