class DailyTask{

  late int _amountEasy;
  late int _amountNormal;
  late int _amountHard;

  DailyTask(timeEasy, timeNormal, timeHard){
    _amountEasy = timeEasy;
    _amountNormal = timeNormal;
    _amountHard = timeHard;
  }

  int get amountEasy => _amountEasy;
  int get amountNormal => _amountNormal;
  int get amountHard => _amountHard;

  set amountEasy(int value){
    _amountEasy = value;
  }

  set amountNormal(int value){
    _amountNormal = value;
  }

  set amountHard(int value) {
    _amountHard = value;
  }

}