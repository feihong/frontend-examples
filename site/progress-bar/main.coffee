total = 20

co(() ->
  perc1 = $('.html5 .percent')
  prog1 = $('progress')
  perc2 = $('.bs .percent')
  prog2 = $('.progress-bar')

  for i in [1..total]
    percent = i / total * 100

    perc1.text("#{percent.toFixed(0)}%")
    prog1.val(percent)

    perc2.text("#{percent.toFixed(0)}%")
    prog2.css('width', "#{percent}%")

    yield sleep 1
)
