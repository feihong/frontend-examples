// Generated by CoffeeScript 1.10.0
(function() {
  var loadScript, plog;

  window.example = function(title, fn) {
    $('.example-title').text(title);
    return fn();
  };

  plog = function(text, cls) {
    var p;
    p = $('<p>').text(text).appendTo('.console');
    if (cls) {
      p.addClass(cls);
    }
    return p;
  };

  plog.highlight = function(text) {
    return plog(text, 'highlight');
  };

  plog.success = function(text) {
    return plog(text, 'success');
  };

  plog.error = function(text) {
    return plog(text, 'error');
  };

  window.plog = plog;

  window.sleep = function(delay) {
    return new Promise(function(resolve, reject) {
      return window.setTimeout(resolve, delay * 1000);
    });
  };

  loadScript = function(source) {
    $('.script-container').empty();
    return $('<script>').attr('src', source).appendTo('.script-container');
  };

  $(document).ready(function() {
    var hash, source;
    hash = document.location.hash;
    if (hash) {
      source = hash.substring(1);
      return loadScript(source);
    }
  });

  $('.nav').on('click', 'li', function(evt) {
    var href;
    $('.console').empty();
    href = $(evt.target).attr('href');
    href = href.substring(1);
    return loadScript(href);
  });

}).call(this);