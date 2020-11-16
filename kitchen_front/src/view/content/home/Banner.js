import React, { Component } from "react";
import { NavLink } from "react-router-dom";
import { Carousel } from "antd";
import "../../../css/home/banner.css";
import "./full.css";
import HomeSearch from "./HomeSearch";
export default class Banner extends Component {
  constructor(props) {
    super(props);
    this.state = {
      bannerData: props.bannerArr,
      boxopacity: 1
    };
    this.lunbotu = {};
  }
  static getDerivedStateFromProps(props, state) {
    return { bannerData: props.bannerArr };
  }
  bannerItem() {
    return this.state.bannerData.map(item => {
      return (
        <div key={item.id}>
          <div className='bannerdes'>
            <NavLink to={{ pathname: `/detail/${item.id}` }}>
              <p className='bannerText'>{item.bandes}</p>
            </NavLink>
          </div>
          <img className='bannerimg' src={item.src} alt='' />
        </div>
      );
    });
  }
  myprev = () => {
    this.lunbotu.prev();
  };
  mynext = () => {
    this.lunbotu.next();
  };
  render() {
    return (
      <div className='banner section'>
        <div className='bannerbox'>
          <Carousel autoplay ref={e => (this.lunbotu = e)}>
            {this.bannerItem()}
          </Carousel>
          <div className='enjoy'>
            <p>食享厨房</p>
            <p>食天下，享生活</p>
          </div>
          <button className='change changePre' onClick={this.myprev}>
            &lt;
          </button>
          <button className='change changeNext' onClick={this.mynext}>
            &gt;
          </button>
          <HomeSearch></HomeSearch>
        </div>
      </div>
    );
  }
}
