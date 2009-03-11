// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//document.observe("dom:loaded", function() {
//Event.observe(window, 'load', function() {
//	$('release_form').hide();
//	$('todo_form').hide();
//	$('edit_release').hide();
//});

Event.addBehavior({
  '#release_form' : function() {
    this.hide();
  },
  '#edit_release' : function() {
    this.hide();
  },
  '#release_add:click' : function() {
    $('release_form').toggle();
    return false;
  },
  '#todo_form' : function() {
    this.hide();
  }
});