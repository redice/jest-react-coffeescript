React = require 'react/addons'

CheckboxWithLabel = React.createClass
  getInitialState: ->
    isChecked: false

  onChange: ->
    @setState
      isChecked: !@state.isChecked

  render: ->
    <label>
      <input
        type="checkbox"
        checked={this.state.isChecked}
        onChange={this.onChange} />
      {if this.state.isChecked then this.props.labelOn else this.props.labelOff}
    </label>

module.exports = CheckboxWithLabel
