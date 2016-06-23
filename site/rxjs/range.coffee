example 'range', (console) ->
  Rx.Observable.range(103, 6)
    .subscribe (x) -> console.log(x)
