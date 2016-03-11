path = require 'path'
React = require 'react'

UserImage = React.createClass
  propTypes:
    slug: React.PropTypes.string.isRequired
  render: ->
    imgSrc = path.join 'http://example.com/users', @props.slug, 'avatar.png'

    <img src={imgSrc} />

module.exports = UserImage
