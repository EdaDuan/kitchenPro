import React, { Component } from "react";
import EmptyBox from "../../header/topnavchild/EmptyBox";
import TopNav from "../../header/TopNav";
import Searchcontent from "./Searchcontent";
import "../../../css/search/searchcontent.css";
export default class Search extends Component {
  constructor(props) {
    super(props);
    // 保存关键字,将会传入到searchcontent组件中,默认为all
    this.state = {
      kw: props.match.params.kw
    };
  }

  // 在组件中，从路由中检测关键词是否变化，如果变化则更新state的关键词，如果没有变化则不更新state
  shouldComponentUpdate(nextProps, nextState) {
    if (this.props.match.params.kw !== nextProps.match.params.kw) {
      this.setState({
        kw: nextProps.match.params.kw
      });
    }
    return true;
  }
  render() {
    return (
      <React.Fragment>
        <TopNav></TopNav>
        <EmptyBox>这是一个空盒子，不要动他</EmptyBox>
        {/* 关键词传入Searchcontent中 */}
        <Searchcontent keyword={this.state.kw}></Searchcontent>
      </React.Fragment>
    );
  }
}

// 整体思路
// searchbox绑定输入框的值，点击button使用link的动态传入关键词，
//如果用户输入为空  路由为 /search/  为了避免这种情况，当用户输入为空的
// 时候，我们把关键词设置为all
// search 组件第一次挂载的时候 也就是搜索第一次被点击的时候，组件
// 使用componentDidMount 拿到关键词保存在状态中，然后把关键词传入Searchcontent中
// search 组件后续更新(在搜索页面连续搜索)的时候并不会触发使用componentDidMount
// 所以我们使用更新组件shouldComponentUpdate，在这里面来对比，如果前后的关键词没有变化,则不用更新this.state
//传入 Searchcontent中之后 把数据保存在自己的state中，后续根据自己的state来进行动态请求数据
// 因为直接从props保存在state中，即使props发生变化state也不会动态变化
// 所以使用  static getDerivedStateFromProps   来接收每一次props的变化然后更新state
// searchcontent 第一次挂载的时候需要请求数据，后面每次state变化的时候，也需要请求数据，
// 所以使用更新阶段的生命周期  componentDidUpdate来比较上一次传递的关键词和本次更新之后的state中的关键词
// 如果相同  不重新请求，  如果不同，  重新请求
