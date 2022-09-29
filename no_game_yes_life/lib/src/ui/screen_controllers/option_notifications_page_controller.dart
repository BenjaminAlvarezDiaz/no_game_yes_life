import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class OptionNotificationsPageController extends ControllerMVC{
  OptionNotificationsPageController._privateConstruct();
  static final OptionNotificationsPageController _instance = OptionNotificationsPageController._privateConstruct();

  factory OptionNotificationsPageController(){
    return _instance;
  }

  onPressedNotificationOption(bool value, bool light){
    return setState((){
      light = value;
    });
  }














}