import React, { Component } from "react";

export default class RecipeContent extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    let pageSize = this.props.pageSize;
    let cur = (this.props.currentPage - 1) * pageSize;
    const showMenuData = this.props.menuData
      .slice(cur, cur + pageSize)
      .map((item) => {
        return (
          <div data-id={item.id} className="itemBox" key={item.id} onClick={this.props.getIt}>
            <div className="item-img">
              <img src={item.src} alt="" />
            </div>
            <div className="item-title"> {item.name} </div>
            <div className="item-intro"> {item.des} </div>
          </div>
        );
      });
    return (
      <>
        <div className="conBox"> {showMenuData} </div>
      </>
    );
  }
}
