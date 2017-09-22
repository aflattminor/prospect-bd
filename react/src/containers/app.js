import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {

    }
  }

  render() {

    return (
      <BrowserRouter>
        <Switch>
          <Route exact path="/dashboards" component={UserIndexContainer} />
          <Route exact path="/dashboards/:user_id" component={UserShowContainer} />
        </Switch>
     </BrowserRouter>
    );
  }
}

export default App;
