// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require bootstrap
//= require form
//= require_tree .
//= require bootstrap-sprockets
//= require Chart.bundle
//= require chartkick
//= require moment
//= require bootstrap-datetimepicker
//= require jquery-ui
//= require enter
//= require autocomplete-rails
//= require jquery-ui/autocomplete
//= require autocomplete_event_name
//= require bootstrap-timepicker
//= require jqueryui-timepicker-addon/dist/jquery-ui-timepicker-addon
//= require jqueryui-timepicker-addon/dist/i18n/jquery-ui-timepicker-ja
$(document).on('turbolinks:load',function(){  $('.datetimepicker').datetimepicker()});
