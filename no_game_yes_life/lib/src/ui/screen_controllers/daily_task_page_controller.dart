import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screens/hobby_stop_watch_page.dart';

class DailyTaskPageController extends ControllerMVC{
  DailyTaskPageController._privateConstruct();
  static final DailyTaskPageController _instance = DailyTaskPageController._privateConstruct();

  factory DailyTaskPageController(){
    return _instance;
  }

  onPressedTask(context){
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const HobbyStopWatch())
    );
  }

}