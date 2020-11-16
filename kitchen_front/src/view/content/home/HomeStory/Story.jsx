import React, { Component } from 'react'
import { withRouter } from 'react-router-dom'

import EmptyBox from '../../../header/topnavchild/EmptyBox'
import TopNav from '../../../header/TopNav'
import StoryDetail from './StoryDetail'

class Story extends Component {
  render() {
    return (
      <React.Fragment>
        <TopNav></TopNav>
        <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
        <StoryDetail sid={this.props.match.params.id} />
      </React.Fragment>
    )
  }
}
export default withRouter(Story)
