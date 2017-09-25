import React from 'react';
import {Link} from 'react-router'
import TeamComponent from "../components/TeamComponent"

class TeamIndexContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      users: [],
      calls: [],
      emails: [],
      meeting: []

    }
  }

  componentDidMount(){
    fetch('/api/v1/users/')
    .then(response => {
      if (response.ok) {
        return response.json();
      } else {
        let errorMessage = `${response.status} ${response.statusText}`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => {
      this.setState({
        users: response
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }




  render() {
    let teamComponents = this.state.users.map((user) =>{
      return (
        <Link to={`/users/${user.id}`} key ={user.id}>
         <TeamComponent
         key = {user.id}
         id= {user.id}
         name= {user.username}/>
        </Link>
      )
    })

    return (
      <div className="user-index-container">
        {teamComponents}
      </div>
    );
  }
}

export default TeamIndexContainer;
