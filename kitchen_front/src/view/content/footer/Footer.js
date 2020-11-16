import React, { Component } from "react";
import "../../../css/Footer.css";
export default class Footer extends Component {
  render() {
    return (
      <div id='footer'>
        <div className='footer-box'>
          <div className='footer-left'>
            <img src={require("../../../images/topnav/logo2.png")} alt=''></img>
            <p>唯有爱与美食不可辜负</p>
          </div>
          <div className='footer-right'>
            <ul>
              <li>
                <span>关于食享厨房</span>
              </li>
              <li>
                <span>了解食享</span>
              </li>
              <li>
                <span>团队介绍</span>
              </li>
              <li>
                <span>美食专家</span>
              </li>
              <li>
                <span>加入我们</span>
              </li>
            </ul>
            <ul>
              <li>
                <span href='#'>产品服务</span>
              </li>
              <li>
                <span href='#'>美食活动</span>
              </li>
              <li>
                <span href='#'>APP服务</span>
              </li>
              <li>
                <span href='#'>品质优选</span>
              </li>
            </ul>
            <ul>
              <li>
                <span href='#'>联系我们</span>
              </li>
              <li>
                <span href='#'>作品投稿</span>
              </li>
              <li>
                <span href='#'>美食入驻</span>
              </li>
              <li>
                <span href='#'>商务合作</span>
              </li>
            </ul>
          </div>
        </div>
        <div className='footer-bottom'>
          <p style={{ fontSize: "12px", color: "#999999", textAlign: "center", marginTop: "10px" }}>Copyright © 2020 我们没得有限公司 版权所有[川B2-20200901]</p>
          <div style={{ display: "flex", alignItems: "center", justifyContent: "center" }}>
            <img src={require("../../../images/ghs.png")} style={{ width: "16px" }} alt='' />
            <p style={{ fontSize: "12px", color: "#999999", margin: "0" }}>练手项目暂无备案</p>
          </div>
        </div>
      </div>
    );
  }
}
