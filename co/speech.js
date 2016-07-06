'use strict';

example('Web Speech API', () => {
  function speak(text) {
    return new Promise((resolve, reject) => {
      let utterance = new SpeechSynthesisUtterance(text)
      window.speechSynthesis.speak(utterance)
      utterance.onend = resolve
    })
  }

  let phrases = [
    'Who let the dogs out?',
    'Remember to always be yourself. Unless you suck.',
    'I must not fear. Fear is the mind killer.'
  ]

  co(function* () {
    for (let phrase of phrases) {
      plog(phrase)
      yield speak(phrase)
      yield sleep(1)
    }
  })
})
