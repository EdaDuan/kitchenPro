import React, { Component } from 'react'
// import { Button } from 'antd'
import StoryItem from './StoryItem'
class StoryList extends Component {
  render() {
    return (
      <div style={{ display: 'flex', flexWrap: 'wrap' }}>
        {this.props.foodsStory.map((item) => {
          return <StoryItem item={item} key={item.id}></StoryItem>
        })}
      </div>
    )
  }
}

export default StoryList
