fs = require 'fs'

summarizeFilesInDirectorySync = (directoryPath) ->
  directoryFileSummary = fs.readdirSync(directoryPath).map (fileName) ->
    fileName: fileName
    directory: directoryPath
  
  directoryFileSummary

module.exports.summarizeFilesInDirectorySync = summarizeFilesInDirectorySync

