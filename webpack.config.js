const path = require('path');

module.exports = {
  mode: 'development',
  target: "webworker",
  context: path.resolve(__dirname, '.'),
  devtool: 'nosources-source-map',
  entry: './index.js',
  output: {
    path: path.resolve(__dirname, "build"),
    filename: 'worker.js',
  },
  module: {
    rules: [
      {
        test: /\.abap$/,
        use: [
          {
            loader: path.resolve('abap_loader.js')
          }
        ]
      }
    ],
  },
}