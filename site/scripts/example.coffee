
fakeConsole = {
  log: (obj) ->
    $('<p>').text(obj).appendTo('.console')
}


window.example = (title, fn) ->
  $('.example-title').text(title)
  fn(fakeConsole)


window.plog = (text) ->
  $('<p>').text(text).appendTo('.console')


$('.nav').on('click', 'li', (evt) ->
  evt.preventDefault()
  $('.console').empty()
  $('.script-container').empty()
  $('<script>').attr('src', evt.target.href).appendTo('.script-container')
)

window.sleep = (delay) ->
  return new Promise((resolve, reject) ->
    window.setTimeout(resolve, delay * 1000)
  )
