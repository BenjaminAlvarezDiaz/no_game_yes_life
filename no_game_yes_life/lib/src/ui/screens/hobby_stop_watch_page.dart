import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/hobby_stop_watch_page_controller.dart';
import 'package:provider/provider.dart';
import 'package:no_game_yes_life/src/providers/task_provider.dart';

class HobbyStopWatch extends StatefulWidget{
const HobbyStopWatch ({Key? key}) : super(key: key);

  @override
  StateMVC<HobbyStopWatch> createState() => _HobbyStopWatch();
}

class _HobbyStopWatch extends StateMVC<HobbyStopWatch> {
  late HobbyStopWatchPageController _con;
  //late Duration countdownDuration;
  _HobbyStopWatch() : super (HobbyStopWatchPageController()){
    _con = HobbyStopWatchPageController();
  }
  Duration duration = const Duration();
  Timer? timer;

  bool isCountdown = true;
  @override
  void initState(){
    super.initState();
    reset();
  }

  void reset(){
    Duration countdownDuration = _con.getCountdown();
    if(isCountdown){
      setState(() => duration = countdownDuration);
    }
    else{
      setState(() => duration = const Duration());
    }
  }

  void addTime(){
    final addSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      if(seconds < 0){
        timer?.cancel();
      }
      else{
        duration = Duration(seconds: seconds);
      }

    });
  }

  void startTimer(){
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }
  void stopTimer({bool resets = true}){
    if(resets){
      reset();
    }

    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appBar(context),
      body: _body(),
    ));
  }


  AppBar appBar(context) {
    return AppBar(
      backgroundColor: const Color(0xff704096),
      title: const Text('Hobby stop watch'),
      centerTitle: true,
    );
  }

  _body() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTime(),
          const SizedBox(height: 40),
          buildButtons(),
          const SizedBox(
            height: 40,
          ),
          Text('${context.watch<Task>().timeEasy}')
        ],
      ),
    );
  }

  Widget buildButtons(){
    final isRunning= timer == null ? false : timer!.isActive;
    return isRunning
        ? buttonTimer(
        text: 'Stop',
        onPressed: () {
          if(isRunning){
            stopTimer(resets: false);
          }
        })
        : buttonTimer(
        text: 'Start!',
        onPressed: () {
          startTimer();
        });
  }
  Widget buttonTimer({required String text, required void Function()? onPressed}){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 100,
        decoration: const BoxDecoration(
          color: Color(0xff5295BE)
        ),
        child: Center(
          child: Text(text,
              style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  Widget buildTime(){
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours.remainder(60));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HOURS'),
        const SizedBox(width: 8,),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        const SizedBox(width: 8,),
        buildTimeCard(time: seconds, header: 'SECONDS')
      ],
    );
  }

  Widget buildTimeCard({required String time, required String header}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Color(0xff704096)
          ),
          child: Text(
            time,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 60
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(header)
      ],
    );
  }


}