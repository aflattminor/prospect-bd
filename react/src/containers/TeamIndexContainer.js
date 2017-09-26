import React from 'react';
import {Link} from 'react-router'
import TeamComponent from "../components/TeamComponent"
// import UserShowContainer from "../containers/UserShowContainer"
import UserComponent from "../components/UserComponent"
import {ProgressBar} from 'React-Bootstrap'


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
      let button;
      if(user.id === this.state.selectedUserId){
        button= "fa fa-minus-square-o"
        return (
          <UserComponent
          key = {user.id}
          id= {user.id}
          name= {user.username}
          calls={user.call_count}
          emails={user.email_count}
          meetings={user.meeting_count}
          clickButton={this.clickButton}
          button={button}
          />
        )
      }else{
        button= "fa fa-plus-square"
      }
        return (
          <div>
          <TeamComponent
          key = {user.id}
          id= {user.id}
          name= {user.username}
          territory={user.territory}
          title={user.title}
          experience={user.experience_level}
          clickButton={this.clickButton}
          button={button}
          />
          </div>
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
