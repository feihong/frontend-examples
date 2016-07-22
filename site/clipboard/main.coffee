$('button').on 'click', (evt) ->
  input = $(this).prev('input')[0]
  input.focus()
  input.setSelectionRange(0, input.value.length)
  document.execCommand('copy')
