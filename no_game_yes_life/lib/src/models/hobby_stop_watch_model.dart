class HobbyStopWatch{

  late Duration _countdown;

  HobbyStopWatch(Duration time){
    _countdown = time;
  }

  Duration get countdown => _countdown;
}