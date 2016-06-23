example 'fromArray', (console) ->
  Rx.Observable.fromArray([11, 23, 34, 45, 56])
    .subscribe (x) -> console.log(x)
