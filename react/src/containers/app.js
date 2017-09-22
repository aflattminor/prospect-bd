import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, browserHistory } from 'react-router';
import UserIndexContainer from './UserIndexContainer';

const App = (props) => {
console.log("render")
    return (
      <Router history={browserHistory}>
          <Route exact path="/users" component={UserIndexContainer} />
     </Router>
    );
  }


export default App;
