import React from 'react';
import {Link} from 'react-router'
import TeamComponent from "../components/TeamComponent"

class TeamIndexContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      users: [],
      selectedUserId: null

    }
    this.clickButton = this.clickButton.bind(this)
  }

  clickButton(id){
    if (id != this.state.selectedUserId){
    this.setState({selectedUserId: id})
  }else {
    this.setState({selectedUserId: null})
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
         <TeamComponent
         key = {user.id}
         id= {user.id}
         name= {user.username}
         calls= {user.call_count}
         emails= {user.email_count}
         territory={user.territory}
         title={user.title}
         experience={user.experience_level}
      />
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
