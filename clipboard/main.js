// Generated by CoffeeScript 1.10.0
(function() {
  $('button').on('click', function(evt) {
    var input;
    input = $(this).prev('input')[0];
    input.focus();
    input.setSelectionRange(0, input.value.length);
    return document.execCommand('copy');
  });

}).call(this);
