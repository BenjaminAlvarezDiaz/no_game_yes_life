import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screens/daily_task_page.dart';
import 'package:no_game_yes_life/src/ui/screens/hobby_stop_watch_page.dart';
import 'package:no_game_yes_life/src/ui/screens/options_page.dart';

class HomePageController extends ControllerMVC{
  HomePageController._privateConstruct();
  static final HomePageController _instance = HomePageController._privateConstruct();

  factory HomePageController(){
    return _instance;
  }

  onPressedOptions(context){
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const Options())
    );
  }

  onPressedTask(context){
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const DailyTask())
    );
  }

  onPressedHobbyStopWatch(context){
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const HobbyStopWatch())
    );
  }
}