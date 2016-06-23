num = 4

example 'subject', (console) ->
  subject = new Rx.Subject()
  subject.subscribe (x) ->
    console.log(x)

  for i in [1..3]
    subject.onNext(i)

  intervalId = window.setInterval(() ->
    subject.onNext(num)
    num += 1
    if num > 10
      window.clearInterval(intervalId)
      for i in [num..15]
        console.log(i)
  , 500)
