example 'fromArray', () ->
  Rx.Observable.fromArray([11, 23, 34, 45, 56])
    .subscribe (x) -> plog(x)
