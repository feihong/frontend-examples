$('button.add').on 'click', () ->
  d3.csv 'data1.csv', (data) ->
    console.log data
