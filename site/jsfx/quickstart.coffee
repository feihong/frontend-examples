presets = {
  reset: jsfx.Preset.Reset
  coin: jsfx.Preset.Coin
  laser: jsfx.Preset.Laser
  explosion: jsfx.Preset.Explosion
  powerup: jsfx.Preset.Powerup
  hit: jsfx.Preset.Hit
  jump: jsfx.Preset.Jump
  select: jsfx.Preset.Select
  lucky: jsfx.Preset.Lucky
}

custom = {
  select: {'Volume':{'Sustain':0.1,'Decay':0.15,'Punch':0.55}}
  long: {'Volume':{'Sustain':0.1,'Decay':0.5,'Punch':1}}
  cool_laser: {'Frequency':{'Start':943.3730892184989,'Min':0.014185877744481512,'Slide':-0.7858459546681954},'Generator':{'Func':'string','A':0.49925120467721923,'ASlide':0.051883376252668416},'Volume':{'Sustain':0.18790494385019166,'Decay':0.26641428396664724,'Punch':0.24881662233358606}}
}

library = Object.assign({}, presets, custom)
sfx = jsfx.Sounds(library)

example 'Quickstart', (console) ->
  co(() ->
    console.log 'Presets:'

    # 'Note that it will load with a delay to avoid blocking the page load for
    # too long, so calling those function immediately may result in silence.'
    yield sleep(1)

    for key, value of presets
      console.log(key)
      sfx[key]()
      yield sleep(1.5)

    yield sleep(2)

    console.log 'Custom:'

    for key, value of custom
      console.log(key)
      sfx[key]()
      yield sleep(1.5)
  )
