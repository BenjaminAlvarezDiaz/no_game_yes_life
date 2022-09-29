import 'package:flutter/material.dart';

class Task with ChangeNotifier{
  static Duration time = const Duration(hours: 16);
  static Duration timeTask1= time;
  static Duration timeTask2= time;

  void easyTask(){
    Duration timeEasy = timeTask1 - const Duration(hours: 2);
    ChangeNotifier();
  }

  void normalTask(){
    Duration timeNormal = timeTask2 - const Duration(hours: 4);
    ChangeNotifier();
  }

  void hardTask(){
    Duration timeHard = const Duration(minutes: 30);
    ChangeNotifier();
  }




}