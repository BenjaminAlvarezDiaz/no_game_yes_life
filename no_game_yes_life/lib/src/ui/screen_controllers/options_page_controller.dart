import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screens/option_nickname_page.dart';
import 'package:no_game_yes_life/src/ui/screens/option_notifications_page.dart';
import 'package:no_game_yes_life/src/ui/screens/option_routine_page.dart';

class OptionsPageController extends ControllerMVC{

  late String title;

  OptionsPageController._privateConstruct();
  static final OptionsPageController _instance = OptionsPageController._privateConstruct();

  factory OptionsPageController(){
    return _instance;
  }

  String getTitle(){
    title='Options';
    return title;
  }

  onPressedNickname(context){
    print('Me estoy yendo xd');
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const OptionsNicknamePage())
    );
  }

  onPressedRoutine(context){
    print('Me estoy yendo pa otro lado xd');
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const OptionsRoutinePage())
    );
  }

  onPressedNotifications(context){
    print('Me estoy yendo pa otro lado aaaaaaaaaa xd');
    return Navigator.push(context, MaterialPageRoute(
        builder: (context) => const OptionsNotificationsPage())
    );
  }
}