const mix = require('laravel-mix');
const WebpackNotifierPlugin = require('webpack-notifier');

mix.config.resourceRoot = '/templates/simplicity/';
mix.config.fileLoaderDirs.images = 'img';

mix.js('src/js/app.js', 'js')
   .sass('src/scss/app.scss', 'css');

mix.webpackConfig({
  plugins: [
    new WebpackNotifierPlugin({
      title: 'Simplicity',
      alwaysNotify: true,
      contentImage: 'img/logo.png',
    }),
  ],
});
