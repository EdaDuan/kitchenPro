import React from "react";
import axios from "../../../../axios/index.js";
import "../../../../css/person/MyProduct.css";
import { withRouter } from "react-router-dom";
class MyProduct extends React.Component {
  constructor() {
    super();
    this.state = {
      username: "",
      productlist: []
    };
  }

  componentDidMount() {
    this.setState(
      {
        username: localStorage.getItem("userid")
      },
      () => {
        axios
          .get("/getmyproduct", {
            params: {
              id: this.state.username
            }
          })
          .then(r => {
            this.setState({
              productlist: r.data
            });
          });
      }
    );
  }

  show() {
    const listItems = this.state.productlist.map(item => {
      return (
        <div
          key={item.id}
          className='showbox'
          onClick={() => {
            this.goDetail(item.id);
          }}
        >
          <p className='productname'>作品名称:{item.name}</p>
          <div className='proimg'>
            <img src={item.src} alt='' />
          </div>
          <p className='prodes'>{item.des}</p>
          <p>上传时间:{item.time.substr(0, 10) + " " + item.time.substr(11, 8)}</p>
        </div>
      );
    });
    return listItems;
  }

  goDetail = id => {
    this.props.history.push({ pathname: `/detail/${id}` });
    this.props.history.go(0);
  };

  render() {
    return (
      <React.Fragment>
        <div id='myproduct'>{this.state.productlist.length === 0 ? <img src={require("../../../../images/noproduct.png")} alt=''></img> : this.show()}</div>
      </React.Fragment>
    );
  }
}

export default withRouter(MyProduct);
