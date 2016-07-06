'use strict';

example('Generators', () => {
  function* values(n) {
    for (let i=0; i < n; i++) {
      yield i*2 + 1
    }
  }

  for (let e of values(10)) {
    plog(e);
  }
})
