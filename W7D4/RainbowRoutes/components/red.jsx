import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Orange from './orange';
import Yellow from './yellow';

class Red extends React.Component {
  render() {
    return(
      <div>
        <h2 className="red"></h2>
        <NavLink exact to='/red' >Red only</NavLink>
        <NavLink to='/red/yellow' >Add yellow</NavLink>
        <NavLink to='/red/orange' >Add orange</NavLink>

  
        {/* <Link to='/red' >Red only</Link>
        <Link to='/red/yellow' >Add yellow</Link>
        <Link to='/red/orange' >Add orange</Link> */}

        <Route path="/red/yellow" component={Yellow} />
        <Route path="/red/orange" component={Orange} />
      </div>
    );
  }
};

export default Red;
