import React, { Component } from 'react'
import axios from '../../../axios'
import { withRouter } from 'react-router-dom'
import EmptyBox from '../../header/topnavchild/EmptyBox'
import Image from '../../../images/homebg/transition_2.png'
import '../../../css/home/HomeStory.css'

import StoryList from './HomeStory/StoryList'

const bgImage = {
  backgroundSize: '100% 100%',
  background: `url(${Image})`,
}
const story = {
  fontSize: '20px',
  color: '#fff',
}

class HomeStory extends Component {
  constructor(props) {
    super(props)
    this.state = {
      foodsStory: [],
    }
  }
  getFoodsStory = () => {
    axios.get('/getFoodsStory').then((res) => {
      if (res.data.length <= 8) {
        this.setState({
          foodsStory: res.data,
        })
      } else {
        this.setState({
          foodsStory: res.data.splice(0, 8),
        })
      }
    })
  }
  componentDidMount() {
    this.getFoodsStory()
  }
  render() {
    return (
      <div className="section" style={bgImage}>
        <EmptyBox>这是一个空盒子，不要动他</EmptyBox>

        <div className="showCultur">
          <div style={story}>厨房Story</div>
          <StoryList foodsStory={this.state.foodsStory} />
        </div>
      </div>
    )
  }
}
export default withRouter(HomeStory)
