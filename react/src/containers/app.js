import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, browserHistory } from 'react-router';
import TeamIndexContainer from './TeamIndexContainer';

const App = (props) => {
    return (
      <Router history={browserHistory}>
        <Route exact path="/" component={TeamIndexContainer} />
        <Route exact path="/dashboards" component={TeamIndexContainer} />
      </Router>
    );
  }


export default App;
