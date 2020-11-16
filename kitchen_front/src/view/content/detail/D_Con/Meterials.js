import React, { Component } from "react";
import '../../../../css/detail/Meterials.css';
export default class Meterials extends Component {
  constructor(props) {
    super(props);
    this.state = {
      materialsData: props.materialsArr,
    }
  }
  static getDerivedStateFromProps(props, state) {
    return { materialsData: props.materialsArr }
  }
  getMaterialsItems() {
    return (
      this.state.materialsData.map(item => {
        return (
          <tr key={item.id} className='materialsShow'>
            <td>{item.name}</td>
            <td>{item.num}</td>
          </tr>
        )
      })
    )
  }
  render() {
    return (
      <div>
        <table className='tab'>
          <thead>
            <tr>
              <th>材料</th>
              <th>用量</th>
            </tr>
          </thead>
          <tbody>
            {this.getMaterialsItems()}
          </tbody>

        </table>

      </div>
    );
  }
}
