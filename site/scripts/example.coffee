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


window.sleep = (delay) ->
  return new Promise((resolve, reject) ->
    window.setTimeout(resolve, delay * 1000)
  )


loadScript = (source) ->
  $('.script-container').empty()
  $('<script>').attr('src', source).appendTo('.script-container')


$(document).ready () ->
  hash = document.location.hash
  if hash
    source = hash.substring(1)
    loadScript(source)


$('.nav').on('click', 'li', (evt) ->
  $('.console').empty()
  # Get the actual attribute value, rather than the full URL.
  href = $(evt.target).attr('href')
  # Ignore the hash symbol.
  href = href.substring(1)
  loadScript(href)
)
