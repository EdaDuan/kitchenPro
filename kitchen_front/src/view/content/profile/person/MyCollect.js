import React, { Component } from "react";
import { withRouter } from "react-router-dom";
import axios from "../../../../axios";
import "../../../../css/person/MyCollect.css";
class MyCollect extends Component {
  constructor() {
    super();
    this.state = {
      // 数据库返回的是对象
      mycollect: {
        userinfo: [],
        collectFoods: []
      }
    };
  }

  getMyCollect = () => {
    let userid = localStorage.getItem("userid");
    axios
      .get("/getMyCollect", {
        params: {
          userid
        }
      })
      .then(res => {
        this.setState({
          mycollect: res.data
        });
      })
      .catch(err => console.log(err));
  };

  componentDidMount() {
    if (localStorage.getItem("userid")) {
      this.getMyCollect();
    }
  }

  // 点击跳到详情
  foodsClick = foodsid => {
    this.props.history.push({ pathname: `/detail/${foodsid}` });
  };

  //点击移除收藏
  removeCollect = async (foodsid, e) => {
    e.stopPropagation();

    ////////////////////////////////////////
    let userid = localStorage.getItem("userid");
    let result = await axios.get("/cancelCollect", {
      params: {
        userid,
        foodsid
      }
    });
    if (result.data === 1) {
      alert("删除成功");
      this.getMyCollect();
    }
  };

  render() {
    let { userinfo, collectFoods } = this.state.mycollect;
    // console.log(collectFoods);
    if (userinfo.length === 0 && collectFoods.length === 0) {
      return null;
    }
    return (
      <React.Fragment>
        <div id='mycollect' style={{ width: "1246px", margin: "0 auto" }}>
          <div className='foodscontent'>
            <div className='foodsitembox'>
              {collectFoods.length === 0 ? (
                <img src={require("../../../../images/nocollect.png")} style={{ width: "800px" }} alt=''></img>
              ) : (
                collectFoods.map(item => {
                  return (
                    <div className='foodsitem' onClick={() => this.foodsClick(item.id)} key={item.id}>
                      <div className='foodsimg'>
                        <img src={item.src} alt=''></img>
                      </div>
                      <div className='foodsmsg'>
                        <p className='p1' onClick={() => this.foodsClick(item.id)}>
                          {item.name}
                        </p>
                        <p className='p2'>被收藏 {item.number} 次</p>
                        <p className='p2'>上传于 {item.time.substr(0, 10)}</p>
                        <button className='remove' onClick={e => this.removeCollect(item.id, e)}>
                          移除收藏
                        </button>
                      </div>
                    </div>
                  );
                })
              )}
            </div>

            <div className='advertisement'></div>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default withRouter(MyCollect);
