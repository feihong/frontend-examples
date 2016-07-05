todo = ['fix car', 'buy food', 'take meds', 'walk dog', 'order out',
'pick up dry cleaning']

example 'generateWithRelativeTime', () ->
  Rx.Observable.generateWithRelativeTime(
    0,
    (i) -> i < todo.length,
    (i) -> i + 1,
    (i) -> todo[i],
    (i) -> 500)
    .subscribe (x) -> plog(x)
