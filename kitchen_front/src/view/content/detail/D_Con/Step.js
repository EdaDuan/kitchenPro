import React, { Component } from "react";
import "../../../../css/detail/Step.css";
export default class Step extends Component {
  constructor(props) {
    super(props);
    this.state = {
      stepData: props.stepArr
    };
  }
  static getDerivedStateFromProps(props, state) {
    return { stepData: props.stepArr };
  }
  geStepItems() {
    return this.state.stepData.map(item => {
      return (
        <div key={item.id} className='stepShow'>
          <div className='sword'>
            <p>步骤{item.step}</p>
            <p>{item.tips}</p>
          </div>
          <div className='simg'>
            <img src={item.src} alt='' />
          </div>
        </div>
      );
    });
  }
  render() {
    return <React.Fragment>{this.geStepItems()}</React.Fragment>;
  }
}
