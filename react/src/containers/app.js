import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, browserHistory } from 'react-router';
import TeamIndexContainer from './TeamIndexContainer';
import UserShowContainer from './UserShowContainer';

const App = (props) => {
    return (
      <Router history={browserHistory}>
          <Route exact path="/users" component={TeamIndexContainer} />
     </Router>
    );
  }


export default App;
