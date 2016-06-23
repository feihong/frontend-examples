
fakeConsole = {
  log: (obj) ->
    $('<p>').text(obj).appendTo('.console')
}

window.example = (title, fn) ->
  $('.example-title').text(title)
  fn(fakeConsole)

$('.nav').on('click', 'li', (evt) ->
  evt.preventDefault()
  $('.console').empty()
  $('.script-container').empty()
  $('<script>').attr('src', evt.target.href).appendTo('.script-container')
)
