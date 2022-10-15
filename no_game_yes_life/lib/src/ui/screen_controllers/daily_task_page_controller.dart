import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screens/hobby_stop_watch_page.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class DailyTaskPageController extends ControllerMVC{
  late DataManager dataManager;
  DailyTaskPageController._privateConstruct(this.dataManager);

  static final DailyTaskPageController _instance = DailyTaskPageController._privateConstruct(DataManager());

  factory DailyTaskPageController(){
    return _instance;
  }

  init(){
    getCountdown();
  }

  onPressedTask(context){
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const HobbyStopWatch())
    );
  }

  getCountdown(){
    return dataManager.getCountDown();
  }

  setTimeEasy(){
    Duration timeEasy = dataManager.getCountDown() - Duration(hours: 2);
    return timeEasy;
  }

  setTimeNormal(){
    Duration timeNormal = dataManager.getCountDown() - Duration(hours: 4);
    return timeNormal;
  }

  setTimeHard(){
    Duration timeHard = Duration(minutes: 30);
    return timeHard;
  }

}