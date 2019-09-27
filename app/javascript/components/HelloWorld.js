import React from "react"
import PropTypes from "prop-types"
class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
        <GreetUser greeting = {this.props.greeting}/>
      </React.Fragment>
    );
  }
}

class GreetUser extends React.Component {
  render(){
    return(
      <React.Fragment>
        <div class = "container text-center">
          <h2> Welcome to Amazing Kart</h2>
          View all products here  <a href = "/products"><h3 class="d-inline-block">Products</h3></a>
        </div>
      </React.Fragment>
    )
  }
}


HelloWorld.propTypes = {
  greeting: PropTypes.string
};

export default HelloWorld
