jest.dontMock '../CheckboxWithLabel'

describe 'CheckboxWithLabel', ->
  it 'changes the text after click', ->
    React = require 'react/addons'
    CheckboxWithLabel = require '../CheckboxWithLabel'
    TestUtils = React.addons.TestUtils

    checkbox = TestUtils.renderIntoDocument(
      <CheckboxWithLabel labelOn="On" labelOff="Off" />
    )

    label = TestUtils.findRenderedDOMComponentWithTag checkbox, 'label'
    expect(label.getDOMNode().textContent).toEqual 'Off'

    input = TestUtils.findRenderedDOMComponentWithTag checkbox, 'input'
    TestUtils.Simulate.change input
    expect(label.getDOMNode().textContent).toEqual 'On'
