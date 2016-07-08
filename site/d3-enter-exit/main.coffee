tbody = d3.select('tbody')

$(document).ready () ->
  d3.csv 'data0.csv', (data) ->
    update data


$('button.add').on 'click', () ->
  d3.csv 'data1.csv', (data) ->
    update data


update = (data) ->
  rows = tbody.selectAll('tr').data(data)
  tr = rows.enter().append('tr')
  # rows.exit().remove()

  tr.selectAll('td')
      .data (d) ->
        console.log d3.values(d)
        d3.values(d)
      .enter()
      .append 'td'
      .text (d) -> d
