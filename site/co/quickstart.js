'use strict';

example('Co Quickstart', (console) => {
  function sleep(delay) {
    return new Promise((resolve, reject) => {
      window.setTimeout(resolve, delay * 1000)
    })
  }

  let counterDiv = $('<p>')
    .text('0')
    .css('background-color', 'palegoldenrod')
    .appendTo('.console')

  co(function* () {
    let count = 0
    while (true) {
      yield sleep(1)
      count++
      counterDiv.text(count)
    }
  })

  co(function* () {
    console.log('0 seconds')
    yield sleep(1)
    console.log('After 1 second')
    // throw 'Horrible error!'
    yield sleep(2)
    console.log('After 2 seconds')
    yield sleep(3)
    console.log('After 3 seconds')
    return 'wumpus'
  }).then(
    (value) => console.log('All done! Result was: ' + value),
    (error) => console.log('Error: ' + error)
  )
})
