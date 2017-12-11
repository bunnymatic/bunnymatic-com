import React, { Component } from 'react';
import Navigation from './navigation';
import Main from './pages/main';

class BunnymaticApp extends Component {
  render() {
    return(
      <div className="app-container">
        <Navigation />
        <Main />
      </div>
    );
  }
}

export default BunnymaticApp;
