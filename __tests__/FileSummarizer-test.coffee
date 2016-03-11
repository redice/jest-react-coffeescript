jest.dontMock '../FileSummarizer'

describe 'FileSummarizer', ->
  describe 'listFilesInDirectorySync', ->
    MOCK_FILE_INFO =
      '/path/to/file1.js': 'console.log("file1 contents");'
      '/path/to/file2.txt': 'file2 contents'

    beforeEach ->
      # require('fs').__setMockFiles MOCK_FILE_INFO

    it 'includes all files in the directory in the summary', ->
      FileSummarizer = require '../FileSummarizer'
      fileSummary = FileSummarizer.summarizeFilesInDirectorySync './__tests__'

      console.log "fileSummary = #{fileSummary.length}"
      expect(fileSummary.length).toBe 3
