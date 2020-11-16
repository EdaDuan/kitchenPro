import React, { Component } from 'react'
// import { Button } from 'antd'
import ListItem from '../../search/ListItem'

class Dinner extends Component {
  render() {
    return (
      <div id="pubshow" style={{ display: 'flex', flexWrap: 'wrap' }}>
        {this.props.foodHomeArr.map((item) => {
          return (
            <ListItem
              item={item}
              key={item.id}
              handleCollect={this.props.handleCollect}
              cancelCollect={this.props.cancelCollect}
            ></ListItem>
          )
        })}
      </div>
    )
  }
}

export default Dinner
