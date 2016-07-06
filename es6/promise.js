'use strict';

example('Promise', () => {
  // Note that we already defined this in scripts/example.coffee.
  function sleep(delay) {
    return new Promise((resolve, reject) => {
      window.setTimeout(resolve, delay * 1000)
    })
  }

  plog('0 seconds')

  sleep(2).then(() => plog('2 seconds'))

  sleep(5).then(() => plog('5 seconds'))

  sleep(9).then(() => plog('9 seconds'))
})
