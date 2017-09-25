import React from 'react';

const TeamComponent = (props) => {
  return (
    <div className="TeamShowComponent">
      <h1>{props.name}</h1>
      <p> Title: {props.title}</p>
      <p>Territory: {props.territory}</p>
      <p>Experience: {props.experience}</p>


    </div>
  )
}

export default TeamComponent;
