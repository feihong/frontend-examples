'use strict';

example('Promise', (console) => {
  function sleep(delay) {
    return new Promise((resolve, reject) => {
      window.setTimeout(resolve, delay * 1000)
    })
  }

  console.log('0 seconds')

  sleep(2).then(() => console.log('2 seconds'))

  sleep(5).then(() => console.log('5 seconds'))

  sleep(9).then(() => console.log('9 seconds'))
})
