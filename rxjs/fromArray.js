// Generated by CoffeeScript 1.10.0
(function() {
  example('fromArray', function() {
    return Rx.Observable.fromArray([11, 23, 34, 45, 56]).subscribe(function(x) {
      return plog(x);
    });
  });

}).call(this);
