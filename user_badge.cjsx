React = require 'react'

UserImage = require './user_image'

UserBadge = React.createClass
  getDefaultProps: ->
    friendlyName: 'Rick Chang'
    userSlug: 'redice'
  render: ->
    <div>
      <h1>{@props.friendlyName}</h1>
      <UserImage slug={@props.userSlug} />
    </div>

module.exports = UserBadge

