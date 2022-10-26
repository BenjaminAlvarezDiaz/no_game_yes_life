class User{

  late String _name;
  late double _routine;
  User(
      nickname,
      routine
      ){
    _name = nickname;
    _routine = routine;
  }

  String get name => _name;
  double get routine => _routine;

  set name(String value) {
    _name = value;
  }

  set routine (double value) {
    _routine = value;
  }
}