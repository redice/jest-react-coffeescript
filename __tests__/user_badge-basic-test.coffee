jest.dontMock '../user_badge'

React = require 'react/addons'
TestUtils = React.addons.TestUtils

UserBadge = require '../user_badge'
UserImage = require '../user_image'

describe 'Basic UserBadge', ->
  subject = undefined
  beforeEach ->
    subject = TestUtils.renderIntoDocument(
      <UserBadge />
    )

  it 'should use the mock component and not the real component', ->
    expect(subject.props.friendlyName).toBe 'Rick Chang'
    expect(subject.props.userSlug).toBe 'redice'
