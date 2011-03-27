// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $('#search_courses_form input[type=text]').keyup(function() {
    $.post($("#search_courses_form").attr("action"), $("#search_courses_form").serialize(), null, "script");
    return false;
  });
  $('#search_professors_form input[type=text]').keyup(function() {
    $.post($("#search_professors_form").attr("action"), $("#search_professors_form").serialize(), null, "script");
    return false;
  });
});