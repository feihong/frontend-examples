'use strict';

example('Promise', (console) => {
  function sleep(delay) {
    return new Promise((resolve, reject) => {
      window.setTimeout(resolve, delay)
    })
  }

  console.log('0 seconds')

  sleep(2000).then(() => {
    console.log('2 seconds')
  })

  sleep(5000).then(() => {
    console.log('5 seconds')
  })

  sleep(9000).then(() => {
    console.log('9 seconds')
  })
})
