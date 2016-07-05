example 'range', () ->
  Rx.Observable.range(103, 6)
    .subscribe (x) -> plog(x)
