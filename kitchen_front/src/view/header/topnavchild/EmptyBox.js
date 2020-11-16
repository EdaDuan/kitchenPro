import React, { Component } from "react";

export default class EmptyBox extends Component {
  constructor() {
    super();
    this.style = {
      width: "100px",
      height: "80px"
    };
  }

  render() {
    return (
      <React.Fragment>
        <div style={this.style}></div>
      </React.Fragment>
    );
  }
}
