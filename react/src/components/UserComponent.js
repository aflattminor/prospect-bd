import React from 'react';
import {PieChart} from 'react-easy-chart';

const UserComponent = (props) => {

  let handleClick = () => {
      props.clickButton(props.id)
    }

    let score = (props.calls + props.emails)/props.meetings

  return(

    <div className="UserComponent">
      <i onClick={handleClick} className={props.button} aria-hidden="true"></i>
      <h3>{props.name}</h3>
      <p>Calls: {props.calls}</p>
      <p>Emails: {props.emails}</p>
      <p>Meetings: {props.meetings}</p>

      <p className="progress_label">Calls against Monthly Goal - 1200</p>
      <div id="myProgress">
        <div id="myBar" style={{width: props.calls + '%'}}>{props.calls}%</div>
      </div>

      <p className="progress_label">Emails against Monthly Goal - 600</p>
      <div id="myProgress">
        <div id="myBar" style={{width: props.emails + '%'}}>{props.emails}%</div>
      </div>

      <p className="progress_label">Meetings against Monthly Goal - 15</p>
      <div id="myProgress">
        <div id="myBar" style={{width: props.meetings + '%'}}>{props.meetings}%</div>
      </div>
     <span><br/></span>
     <span><br/></span>


      <div id="pie">
      <PieChart
        size={270}
        innerHoleSize={100}
        labels
        data={[
          { key: `Calls: ${props.calls}`, value: props.calls, color: '#2791e4' },
          { key: `Emails: ${props.emails}`, value: props.emails, color: '#F69D12' },
        ]}
      />
      </div>

      <div className="efficieny">
        <h4>Efficieny Score MTD: {score}</h4>
      </div>
    </div>
  )
}

export default UserComponent;
