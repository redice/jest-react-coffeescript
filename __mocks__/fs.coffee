path = require.requireActual 'path'

fsMock = jest.genMockFromModule 'fs'

_mockFiles = {}
__setMockFiles = (newMockFiles) ->
  _mockFiles = {}
  newMockFiles.forEach (file) ->
    dir = path.dirname file
    _mockFiles[dir] = [] unless _mockFiles[dir]

    _mockFiles[dir].push path.basename file

readdirSync = (directoryPath) ->
  _mockFiles[directoryPath] or []

fsMock.readdirSync.mockImplementation readdirSync

fsMock.__setMockFiles = __setMockFiles

module.exports = fsMock
