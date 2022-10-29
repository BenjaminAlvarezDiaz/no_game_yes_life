import 'package:flutter/material.dart';
import 'package:no_game_yes_life/data_access/data_dummy.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class Task with ChangeNotifier{

  late DataManager dataManager;
  late Duration time;
  late Duration timeEasy;

  Task._privateConstruct(this.dataManager){
    time = dataManager.getCountDown();
    timeEasy = time - Duration(hours: 2);
  }

  static final Task _instance = Task._privateConstruct(DataManager());

  factory Task(){
    return _instance;
  }


  void easyTask(){
    Duration timeEasy = time - const Duration(hours: 2);
    notifyListeners();
  }

  void normalTask(){
    Duration timeNormal = time - const Duration(hours: 4);
    notifyListeners();
  }

  void hardTask(){
    Duration timeHard = const Duration(minutes: 30);
    notifyListeners();
  }




}