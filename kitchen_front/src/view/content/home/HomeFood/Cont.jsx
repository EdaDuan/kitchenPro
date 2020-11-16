import React, { Component } from 'react'
import axios from '../../../../axios'
import Breakfast from './Breakfast'
import Lunch from './Lunch'
import Dinner from './Dinner'
class Cont extends Component {
  constructor(props) {
    super(props)
    this.state = {
      kw: '早餐',
      foodHomeArr: [],
    }
  }

  getFoodsHome = () => {
    let userid = localStorage.getItem('userid') || ''
    let keyword
    if (this.props.contShow === 'breakfast') {
      keyword = '早'
    } else if (this.props.contShow === 'lunch') {
      keyword = '午'
    } else {
      keyword = '晚'
    }
    axios
      .post('/getFoodsByKeyWord', {
        userid,
        keyword,
      })
      .then((res) => {
        if (res.data.length <= 8) {
          this.setState({
            foodHomeArr: res.data,
          })
        } else {
          this.setState({
            foodHomeArr: res.data.splice(0, 8),
          })
        }
      })
  }
  pageShow() {
    let pages = this.props.contShow
    let { foodHomeArr } = this.state
    if (pages === 'breakfast')
      return (
        <Breakfast
          foodHomeArr={foodHomeArr}
          handleCollect={this.handleCollect.bind(this)}
          cancelCollect={this.cancelCollect.bind(this)}
        />
      )
    else if (pages === 'lunch')
      return (
        <Lunch
          foodHomeArr={foodHomeArr}
          handleCollect={this.handleCollect.bind(this)}
          cancelCollect={this.cancelCollect.bind(this)}
        />
      )
    else
      return (
        <Dinner
          foodHomeArr={foodHomeArr}
          handleCollect={this.handleCollect.bind(this)}
          cancelCollect={this.cancelCollect.bind(this)}
        />
      )
  }
  componentDidMount() {
    this.getFoodsHome()
  }

  // 每次更新的时候都会执行;
  componentDidUpdate(prevProps, prevState) {
    if (prevProps.contShow !== this.props.contShow) {
      this.getFoodsHome()
    }
  }

  //一个点击收藏的函数,根据用户id和菜品来进行增添记录
  async handleCollect(userid, foodsid) {
    let result = await axios
      .get('/handleCollect', {
        params: {
          userid,
          foodsid,
        },
      })
      .then(
        (res) => res.data,
        (err) => err
      )

    if (result === 1) {
      //如果成功添加，则重新获取最新的数据
      this.getFoodsHome()
    } else {
      alert('不好意思，服务器开小差了')
    }
  }

  //一个点击取消收藏的函数，根据用户id和菜品来进行增添记录
  async cancelCollect(userid, foodsid) {
    let result = await axios
      .get('/cancelCollect', {
        params: {
          userid,
          foodsid,
        },
      })
      .then(
        (res) => res.data,
        (err) => err
      )

    if (result === 1) {
      //如果成功添加，则重新获取最新的数据
      this.getFoodsHome()
    } else {
      alert('不好意思，服务器开小差了')
    }
  }

  render() {
    return this.pageShow()
  }
}

export default Cont
