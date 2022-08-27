// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require popper
//= require bootstrap
//= require bootstrap-sprockets
import 'bootstrap'



var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
})

// $('.dropdown').hover(function(){
//   $('.dropdown-toggle', this).trigger('click');
// });
