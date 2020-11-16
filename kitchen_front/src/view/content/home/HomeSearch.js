import React, { Component } from "react";
import { Link, withRouter } from "react-router-dom";

class SearchBox extends Component {
  constructor() {
    super();
    this.state = {
      inputContent: ""
    };
  }

  // 绑定输入框的值
  inputchange = e => {
    this.setState({
      inputContent: e.target.value.trim()
    });
  };

  searchKeyword = () => {
    // 当用户输入为空的时候，直接传输关键词为all，否则为用户输入的关键词
    if (this.state.inputContent === "") {
      return `/search/all`;
    } else {
      return `/search/${this.state.inputContent}`;
    }
  };

  render() {
    return (
      <React.Fragment>
        <div className='home-search'>
          <input placeholder='搜索食谱/食材' value={this.state.inputContent} onChange={this.inputchange}></input>
          <Link to={{ pathname: this.searchKeyword() }}>
            <div className="search-btn">搜索</div>
          </Link>
        </div>
      </React.Fragment>
    );
  }
}

export default withRouter(SearchBox);
