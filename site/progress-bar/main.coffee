
co(() ->
  perc = $('.html5 .percent')
  prog = $('progress')
  for i in [1..100]
    prog.val(i)
    perc.text("#{i}%")
    yield sleep 0.2
)
