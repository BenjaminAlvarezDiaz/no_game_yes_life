import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screens/daily_task_page.dart';
import 'package:no_game_yes_life/src/ui/screens/hobby_stop_watch_page.dart';
import 'package:no_game_yes_life/src/ui/screens/options_page.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class HomePageController extends ControllerMVC{
  late DataManager dataManager;
  HomePageController._privateConstruct(this.dataManager);
  static final HomePageController _instance = HomePageController._privateConstruct(DataManager());

  factory HomePageController(){
    return _instance;
  }

  init(){
    getNickname();
  }

  getNickname(){
    return dataManager.getNickname();
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