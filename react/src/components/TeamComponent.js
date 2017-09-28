import React from 'react';
import {Grid, Row, Col, Clearfix} from 'react-bootstrap'

const TeamComponent = (props) => {

  let handleClick = () => {
      props.clickButton(props.id)
    }

  return (




         <Col className="TeamShowComponent" sm={12} md={6}>
            <i onClick={handleClick} className={props.button} aria-hidden="true"></i>
            <h3>{props.name}</h3>
            <p> Title: {props.title}</p>
            <p>Territory: {props.territory}</p>
            <p>Experience: {props.experience}</p>
         </Col>

  )
}

export default TeamComponent;
