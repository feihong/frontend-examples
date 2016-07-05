'use strict';

example('Co Quickstart', () => {
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
    plog('0 seconds')
    yield sleep(1)
    plog('After 1 second')
    // throw 'Horrible error!'
    yield sleep(2)
    plog('After 2 seconds')
    yield sleep(3)
    plog('After 3 seconds')
    return 'wumpus'
  }).then(
    (value) => plog('All done! Result was: ' + value),
    (error) => plog('Error: ' + error)
  )
})
