// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require processing.min
//= require_tree .
$(function() {
  // var keyword = window.location.hash.replace("#","")
  console.log($('#first-login').length)
  if ($('#first-login').length) {
    $('#nav-info').show()
    $('#aside-info').show()
  }
  $('html').on('click', function() {
    $('#nav-info').fadeOut(500)
    $('#aside-info').fadeOut(500)
  })
  // $('#search-buttons').hide();
  $('aside').draggable();

  $('#toggle-category-list').on('click', function (e) {
    e.preventDefault();
    var opened = $(this).data('opened');
    if (opened) {
      $('#search-buttons').toggle("fold", 25);
    } else {
      $('#search-buttons').toggle("fold", 25);
    }
    $(this).data('opened', !opened);
  })

  $('#help-toggle').on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();
    var opened = $(this).data('opened');
    if (opened) {
      $('#nav-info').fadeOut();
      $('#aside-info').fadeOut();
    } else {
      $('#nav-info').fadeIn();
      $('#aside-info').fadeIn();
    }
    $(this).data('opened', !opened);
  })
});
