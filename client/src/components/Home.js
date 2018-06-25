import React, { Component } from 'react';
import { Header } from 'semantic-ui-react';
import axios from 'axios';
import AppShow from './AppShow';

class Home extends Component {
  state = { apps: [] }

  componentDidMount() {
    axios.get(`/api/apps`)
      .then(res => this.setState({ apps: res.data }))
  }

  render() {
    return (
      <div>
        <Header as='h1' textAlign='center'>Welcome to the AppMarket!</Header>
        <p>We've got apps of all flavors... Explore, and enjoy!</p>
        <p>Here's our app list. Click on the one that strikes your fancy!</p>
        <ul>
          <li>
            {/* {this.state.apps.map(app =>
              <Link to="/api/apps/show">{app.name}, <Image src={app.avatar} /></Link> */
              AppShow}
          </li>
        </ul>
      </div>
    )
  }
};
  
export default Home;
