import React, { Component } from 'react';
import { withRouter } from "react-router-dom";
import { Layout } from 'antd';
import EmptyBox from "../../header/topnavchild/EmptyBox";
import '../../../css/home/HomeFood.css'
import Image from '../../../images/homebg/transition_1.png'

import Nav from './HomeFood/Nav'
import Cont from './HomeFood/Cont'
const { Sider, Content } = Layout



const bgImage = {
  backgroundSize: '100% 100%', //
  background: `url(${Image})`,
}
class HomeFood extends Component {
  constructor(props) {
    super(props);
    this.state = {
      contShow: 'breakfast'
    }
  }
  changeCont(e) {
    this.setState({
      contShow: e.key
    })
  }
  render() {
    return <div className="section" style={bgImage}>
      <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
      <div className='foodMenu'>
        <Layout className='foodLayout'>
          <Sider>
            {/* 将app对象传给子组件 */}
            <Nav app={this} />
          </Sider>
          <Content>
            <Cont contShow={this.state.contShow} />
          </Content>
        </Layout>
      </div>
    </div>
  }
}
export default withRouter(HomeFood);
