'use strict';

example('Web Speech API', (console) => {
  function sleep(delay) {
    return new Promise((resolve, reject) => {
      window.setTimeout(resolve, delay * 1000)
    })
  }

  function speak(text) {
    return new Promise((resolve, reject) => {
      let utterance = new SpeechSynthesisUtterance(text)
      window.speechSynthesis.speak(utterance)
      utterance.onend = resolve
    })
  }

  co(function* () {
    yield speak('Who let the dogs out?')
    yield sleep(1)
    yield speak("There's a fly in my soup, oh no!")
    yield sleep(2)
    yield speak('I must not fear. Fear is the mind killer.')
  })
})
