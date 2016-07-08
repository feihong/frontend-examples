'use strict';

example('Co Quickstart', () => {
  let counter = plog.highlight('0')

  co(function* () {
    let count = 0
    while (true) {
      yield sleep(1)
      count++
      counter.text(count)
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
    (value) => plog.success('All done! Result was: ' + value),
    (error) => plog.error('Error: ' + error)
  )
})
