window.example = (title, fn) ->
  $('.example-title').text(title)
  fn()


plog = (text, cls) ->
  p = $('<p>').text(text).appendTo('.console')
  if cls
    p.addClass cls
  return p


plog.highlight = (text) -> plog(text, 'highlight')
plog.success = (text) -> plog(text, 'success')


window.plog = plog


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
