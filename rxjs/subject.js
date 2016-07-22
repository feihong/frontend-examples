// Generated by CoffeeScript 1.10.0
(function() {
  var num;

  num = 4;

  example('subject', function() {
    var i, intervalId, j, subject;
    subject = new Rx.Subject();
    subject.subscribe(function(x) {
      return plog(x);
    });
    for (i = j = 1; j <= 3; i = ++j) {
      subject.onNext(i);
    }
    return intervalId = window.setInterval(function() {
      var k, ref, results;
      subject.onNext(num);
      num += 1;
      if (num > 10) {
        window.clearInterval(intervalId);
        results = [];
        for (i = k = ref = num; ref <= 15 ? k <= 15 : k >= 15; i = ref <= 15 ? ++k : --k) {
          results.push(plog(i));
        }
        return results;
      }
    }, 500);
  });

}).call(this);