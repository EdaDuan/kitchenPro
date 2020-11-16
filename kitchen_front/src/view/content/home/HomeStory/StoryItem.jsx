import React from 'react'
import { withRouter } from 'react-router-dom'

class StoryItem extends React.Component {
  // 跳转到细节页面的接口，使用push方法跳转
  goDetail = (id) => {
    this.props.history.push(`/story/${id}`)
  }
  render() {
    let { item } = this.props
    return (
      <React.Fragment>
        <div
          className="list-item"
          onClick={() => {
            this.goDetail(item.id)
          }}
        >
          <div className="imgbox">
            <div className="mask"></div>
            <img src={item.src} alt="" />
          </div>
          <div className="foods-info">
            <h3>{item.name}</h3>
            <p>{item.descstory}</p>
          </div>
        </div>
      </React.Fragment>
    )
  }
}

export default withRouter(StoryItem)
