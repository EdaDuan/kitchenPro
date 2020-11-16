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
        <div className='searchbox' style={{ opacity: this.props.boxopacity }}>
          <input placeholder='搜索食谱/食材' onChange={this.inputchange}></input>
          <Link to={{ pathname: this.searchKeyword() }}>
            <button>
              <img src={require("../../../images/topnav/btn.png")} alt='搜索'></img>
            </button>
          </Link>
        </div>
      </React.Fragment>
    );
  }
}

export default withRouter(SearchBox);
