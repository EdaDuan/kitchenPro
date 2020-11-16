import React from "react";
import { withRouter } from "react-router-dom";
class HotKeyWord extends React.Component {
  constructor() {
    super();
    this.state = {
      keyword: [
        { id: 1, titile: "肉类", content: ["猪", "牛", "鸡", "牛肉", "肉丝", "鱼", "鱿鱼"] },
        { id: 2, titile: "蔬菜水果", content: ["土豆", "白菜", "红薯", "玉米", "胡萝卜"] },
        { id: 3, titile: "蛋奶豆制品", content: ["鸡蛋", "牛奶", "巧克力", "奶油", "面包", "麦"] }
      ]
    };
  }
  hotkeyclick = keyword => {
    this.props.history.push({ pathname: `/search/${keyword}` });
  };

  render() {
    return (
      <React.Fragment>
        <div className='hot-keyword'>
          <h2>大家都在搜</h2>
          {this.state.keyword.map(item => {
            return (
              <div key={item.id} className='keyword-box'>
                <h3 className='keyword-title'>{item.titile}：</h3>
                {item.content.map(childitem => {
                  return (
                    <span
                      key={childitem}
                      className='keyword-content'
                      onClick={() => {
                        this.hotkeyclick(childitem);
                      }}
                    >
                      {childitem}
                    </span>
                  );
                })}
              </div>
            );
          })}
        </div>
      </React.Fragment>
    );
  }
}

export default withRouter(HotKeyWord);
