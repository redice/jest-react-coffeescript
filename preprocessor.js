/*
Enable testing with coffescript files & React
*/


var coffee = require('coffee-script');
var ReactTools = require('react-tools');

module.exports = {
  process: function(src, path) {
    // console.log('src', src);
    if (path.match(/\.coffee$/)) {

        // First we compile the coffeescript files to normal JSX
        compiled_to_js = coffee.compile(src, {bare: true});

        // Then we compile the JSX to React
        compiled_to_react = ReactTools.transform(compiled_to_js)

      return compiled_to_react;
    }
    return src;
  }
};