'use strict';

function* values(n) {
  for (let i=0; i < n; i++) {
    yield i*2 + 1
  }
}

example('Generators', (console) => {
  for (var e of values(10)) {
    console.log(e);
  }
})
