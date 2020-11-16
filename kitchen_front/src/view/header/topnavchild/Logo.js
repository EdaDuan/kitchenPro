import React, { Component } from "react";
import { NavLink, withRouter } from "react-router-dom";

import logo1 from "../../../images/topnav/logo2.png";
import logo2 from "../../../images/topnav/logo.png";

class Logo extends Component {
  render() {
    return (
      <React.Fragment>
        <div className='logo'>
          <NavLink activeClassName='active' to='/home'>
            <img src={this.props.currentlogo === "one" ? logo1 : logo2} alt=''></img>
          </NavLink>
        </div>
      </React.Fragment>
    );
  }
}
export default withRouter(Logo);
// logo组件可以切换两张不同的图片以适应不同的场景。
//这需要父组件topNav在使用的时候传入值，为one使用白色图片
//定义一个默认的值
Logo.defaultProps = {
  currentlogo: "one"
};
