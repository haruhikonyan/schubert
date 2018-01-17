// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class Hello extends React.Component {
  constructor(props) {
    super(props)
    this.state = { name: this.props.name }
  }

  updateName(name) {
    this.setState({ name });
  }

  render() {
    return (
      <div>
        <h2>
          Hello, {this.state.name}!
        </h2>
        <p>
          <label htmlFor="name">
            お名前:
          </label>
          <input
            id="name"
            type="text"
            value={this.state.name}
            onChange={(e) => this.updateName(e.target.value)}
          />
        </p>
      </div>
    )
  }
}

document.addEventListener("DOMContentLoaded", e => {
  ReactDOM.render(<Hello name="Would" />, document.getElementById('react'))
})
