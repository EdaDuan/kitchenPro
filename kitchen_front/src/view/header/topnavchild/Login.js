import React, { Component } from "react";
import LoginChild from "./loginchild/loginchild";

export default class Login extends Component {
  render() {
    return (
      <React.Fragment>
        <div style={{ cursor: "pointer" }}>
          <LoginChild currentcolor={this.props.currentcolor}></LoginChild>
        </div>
      </React.Fragment>
    );
  }
}
