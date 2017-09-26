import React from 'react';
import {ProgressBar} from 'React-Bootstrap'

const UserComponent = (props) => {

  let handleClick = () => {
      props.clickButton(props.id)
    }

  return(

    <div className="UserComponent">
      <i className="collapse_button" onClick={handleClick} className={props.button} aria-hidden="true"></i>
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


    </div>
  )
}

export default UserComponent;
