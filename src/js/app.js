import jQuery from 'jquery';
import Popper from 'popper.js';

try {
  window.Popper = Popper;
  window.$ = window.jQuery = jQuery;

  require('bootstrap');
}
catch (e) {}

require('./_navbar');
require('./_back-to-top');
