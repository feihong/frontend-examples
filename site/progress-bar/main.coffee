
updateFirstTwoProgressBars = () ->
  total = 20

  co(() ->
    perc1 = $('.html5 .percent')
    prog1 = $('progress')
    perc2 = $('.bs .percent')
    prog2 = $('.bs .progress-bar')

    for i in [1..total]
      percent = i / total * 100

      perc1.text("#{percent.toFixed(0)}%")
      prog1.val(percent)

      perc2.text("#{percent.toFixed(0)}%")
      prog2.css('width', "#{percent}%")

      yield sleep 1
  )


updateThrottledProgressBar = () ->
  total = 1000
  pd = progressDisplay('.throttle', total)
  rtValue = $('.realtime-value')
  co(() ->
    for i in [1..total]
      rtValue.text(i)
      pd.setValue(i)
      yield sleep 0.05
  )


progressDisplay = (container, max) ->
  newValue = null
  running = false
  percDiv = $(container).find('.percent')
  barDiv = $(container).find('.progress-bar')
  progDiv = $(container).find('.progress')

  setValue = (val) ->
    newValue = val / max * 100

    if not running
      co(() ->
        running = true
        progDiv.addClass('active')
        while newValue != null
          percDiv.text "#{newValue.toFixed(0)}%"
          barDiv.css 'width', "#{newValue}%"
          newValue = null
          yield sleep 1
        progDiv.removeClass('active')
        running = false
      )

  return {setValue: setValue}

## MAIN

updateFirstTwoProgressBars()
updateThrottledProgressBar()
