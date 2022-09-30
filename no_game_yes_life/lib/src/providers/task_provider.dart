import 'package:flutter/material.dart';

class Task with ChangeNotifier{

  void easyTask(){
    Duration time = const Duration(hours: 16);
    Duration timeEasy = time - const Duration(hours: 2);
    ChangeNotifier();
  }

  void normalTask(){
    Duration time = const Duration(hours: 16);
    Duration timeNormal = time - const Duration(hours: 4);
    ChangeNotifier();
  }

  void hardTask(){
    Duration timeHard = const Duration(minutes: 30);
    ChangeNotifier();
  }




}