import React, { Component } from "react";
import runcat from "../../../../images/share/runcat.png";
export default class Nologin extends Component {
  constructor() {
    super();
    this.state = {
      runcat: runcat
    };
  }
  render() {
    return (
      <>
        <div style={{ width: "400px", margin: "100px auto" }}>
          <img src={this.state.runcat} style={{ width: "400px" }} alt='' />
          <p style={{ fontSize: "30px", textAlign: "center", width: "100%" }}>还没登录?我家猫都比你积极</p>
        </div>
      </>
    );
  }
}
