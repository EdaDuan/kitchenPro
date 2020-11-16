import React, { Component } from "react";
import EmptyBox from "../../header/topnavchild/EmptyBox";
import TopNav from "../../header/TopNav";
import "../../../css/about/about.css";
import edaduan from "../../../images/about/段发钰.png";
import zslin from "../../../images/about/朱思霖.jpg";
import sxyang from "../../../images/about/杨双星.jpg";
import songyu from "../../../images/about/宋宇.png";
import jarry from "../../../images/about/蒋鑫瑞.png";
import ljl from "../../../images/about/刘俊良.png";
import Footer from "../footer/Footer";
export default class About extends Component {
  constructor() {
    super();
    this.state = {
      edaduan: edaduan,
      zslin: zslin,
      sxyang: sxyang,
      songyu: songyu,
      jarry: jarry,
      ljl: ljl
    };
  }

  render() {
    return (
      <React.Fragment>
        <TopNav></TopNav>
        <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
        <div className='about'>
          <div className='zslinbox'>
            <div style={{ width: "200px", height: "200px", overflow: "hidden", borderRadius: "50%", display: "inline-block" }}>
              <img src={zslin} className='zslin' alt='' />
            </div>
            <span style={{ wordWrap: "break-word", display: "inline-block", width: "150px" }}>团队主干朱思霖,朱老板,团队贡献巨大,熬夜狂魔，根本不怕猝死。半夜三点睡觉</span>
          </div>
          <div className='edaduanbox'>
            <span style={{ wordWrap: "break-word", display: "inline-block", width: "150px" }}>组长段发钰,段总,女人的嘴,骗人的鬼,脸皮非厚,总觉得自己很漂亮,我们也不敢反驳</span>
            <div style={{ width: "200px", height: "200px", overflow: "hidden", borderRadius: "50%", display: "inline-block" }}>
              <img src={edaduan} className='edaduan' alt='' />
            </div>
          </div>
          <div className='songyubox'>
            <span style={{ wordWrap: "break-word", display: "inline-block", width: "150px" }}>宋宇,人人都喊宋老板,西华大学高材生,英语六级大佬</span>
            <div style={{ width: "200px", height: "200px", overflow: "hidden", borderRadius: "50%", display: "inline-block" }}>
              <img src={songyu} className='songyu' alt='' />
            </div>
          </div>
          <div className='sxyangbox'>
            <div style={{ width: "200px", height: "200px", overflow: "hidden", borderRadius: "50%", display: "inline-block" }}>
              <img src={sxyang} className='sxyang' alt='' />
            </div>
            <span style={{ wordWrap: "break-word", display: "inline-block", width: "150px" }}>杨双星,超级大佬一枚,特效大师,也是凶的批爆,面试一轮接一轮,offer随便拿</span>
          </div>
          <div className='jarrybox'>
            <div style={{ width: "200px", height: "200px", overflow: "hidden", borderRadius: "50%", display: "inline-block" }}>
              <img src={jarry} className='jarry' alt='' />
            </div>
            <span style={{ wordWrap: "break-word", display: "inline-block", width: "150px" }}>团队打工仔巨头,浑水摸鱼,混吃等死,没错!所有人的介绍都是我写的</span>
          </div>
          <div className='ljlbox'>
            <span style={{ wordWrap: "break-word", display: "inline-block", width: "150px" }}>刘俊良,凉凉,团队打工仔二号,虽然这个称呼有点不吉祥,但我们已经习惯了</span>
            <div style={{ width: "200px", height: "200px", overflow: "hidden", borderRadius: "50%", display: "inline-block" }}>
              <img src={ljl} className='ljl' alt='' />
            </div>
          </div>
        </div>
        <Footer></Footer>
      </React.Fragment>
    );
  }
}
