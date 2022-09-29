import 'package:flutter/material.dart';
import 'package:no_game_yes_life/src/ui/screens/daily_task_page.dart';

class DailyTaskModel extends StatefulWidget{

  String? text;

   DailyTaskModel ({Key? key, required this.text}) : super (key: key);

  @override
  State<DailyTaskModel> createState() => _DailyTaskModel();
}

class _DailyTaskModel extends State<DailyTaskModel>{
  @override
  Widget build (BuildContext context){
    return task(widget.text);
  }
}

Container task(widget){
  return Container(
    child: Text(widget),
  );
}