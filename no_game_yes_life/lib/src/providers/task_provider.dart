import 'package:flutter/material.dart';

class Task with ChangeNotifier{
  static Duration time = const Duration(hours: 16);
  static Duration timeTask1= time;
  static Duration timeTask2= time;
  static Duration timeEasy = timeTask1 - const Duration(hours: 2);
  static Duration timeNormal = timeTask2 - const Duration(hours: 4);

  void easyTask(){
    ChangeNotifier();
  }

  void normalTask(){
    ChangeNotifier();
  }

  void hardTask(){
    Duration timeHard = const Duration(minutes: 30);
    ChangeNotifier();
  }




}