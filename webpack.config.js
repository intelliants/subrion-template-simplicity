const path = require('path');

module.exports = {
  mode: process.env.NODE_ENV === 'production' ? 'production' : 'development',
  entry: ['./src/js/app.js', './src/scss/app.scss'],
  output: {
    path: path.resolve(__dirname, './'),
    filename: 'js/dist/app.min.js',
  },
  module: {
    rules: [
      {
        test: /\.scss$/,
        use: [
          {
            loader: 'file-loader',
            options: {
              name: './css/dist/[name].min.css',
            }
          },
          {loader: 'extract-loader'},
          {loader: 'css-loader?-url'},
          {loader: 'postcss-loader'},
          {loader: 'sass-loader'}
        ]
      }
    ]
  },

}