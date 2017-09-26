// import React from 'react';
// import UserComponent from "../components/UserComponent"
//
// class UserShowContainer extends React.Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       users: this.props.users,
//       selectedUserId: this.props.id
//     }
//   }
//
//
//
//   render() {
//     let userComponents = this.state.users.map((user) =>{
//       if(selectedUserId == user.id)
//         return (
//           <UserComponent
//           key = {user.id}
//           id= {user.id}
//           name= {user.username}
//           calls= {user.call_count}
//           emails= {user.email_count}
//           territory={user.territory}
//           title={user.title}
//           experience={user.experience_level}
//           />
//         )
//       }
//     )
//
//     return (
//       <div className="UserShowContainer">
//       {userComponents}
//       </div>
//     );
//   }
// }
//
// export default UserShowContainer;
