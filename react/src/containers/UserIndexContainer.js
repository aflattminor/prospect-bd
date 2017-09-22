import React from 'react';
import {Link} from 'react-router'

class UserIndexContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      users: []

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
debugger
    let userComponents = this.state.users.map((user) =>{
      return (
        <div className="tile">
        <Link to={`/users/${user.id}`}>{user.username}</Link>
        </div>
      )
    })

    return (
      <div className="user-index-container">
        {userComponents}
      </div>
    );
  }
}

export default UserIndexContainer;
