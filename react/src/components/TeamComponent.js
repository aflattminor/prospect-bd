import React from 'react';

const TeamComponent = (props) => {

  let handleClick = () => {
      props.clickButton(props.id)
    }

  return (
    <div className="TeamShowComponent">
      <h3>{props.name}</h3>
      <p> Title: {props.title}</p>
      <p>Territory: {props.territory}</p>
      <p>Experience: {props.experience}</p>
    </div>
  )
}

export default TeamComponent;
