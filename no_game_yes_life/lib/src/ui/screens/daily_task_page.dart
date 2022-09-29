import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/daily_task_page_controller.dart';
import 'package:provider/provider.dart';
import 'package:no_game_yes_life/src/providers/task_provider.dart';
//import 'package:no_game_yes_life/src/models/daily_task_model.dart';

class DailyTask extends StatefulWidget{
  const  DailyTask({Key? key}) : super (key: key);

  @override
  StateMVC<DailyTask> createState() => _DailyTaskPage();
}

class _DailyTaskPage extends StateMVC<DailyTask> {
  static Duration time = const Duration(hours: 16, minutes: 00);
  static Duration timeTask1= time;
  static Duration timeTask2= time;
  late DailyTaskPageController _con;
  _DailyTaskPage() : super (DailyTaskPageController()){
    _con = DailyTaskPageController();
  }
  static Duration timeEasy = timeTask1 - const Duration(hours: 2);
  static Duration timeNormal = timeTask2 - const Duration(hours: 4);
  static Duration timeHard = const Duration(minutes: 30);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: _body(),
      ),
    );
  }


  Column _body() {
    return Column(
      children: [
        _easy(),
        _normal(),
        _hard()
      ],
    );
  }

  Column _easy() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(timeEasy.inHours.remainder(60));
    final minutes = twoDigits(timeEasy.inMinutes.remainder(60));
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color(0xff704096),
                    width: 1.5
                )
            ),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text('Easy Task',
                  style: TextStyle(
                      color: Color(0xff704096),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  )
              ),
            ),
          ),
        ),
        _space(),
        _task('The easy challenge is as follows: ${hours} : ${minutes}', _con.onPressedTask(context)),
        _space()
      ],
    );
  }

  Column _normal() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(timeNormal.inHours.remainder(60));
    final minutes = twoDigits(timeNormal.inMinutes.remainder(60));
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color(0xff704096),
                    width: 1.5
                )
            ),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text('Normal Task',
                  style: TextStyle(
                      color: Color(0xff704096),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  )
              ),
            ),
          ),
        ),
        _space(),
        _task('The normal challenge is as follows: ${hours} : ${minutes}', _con.onPressedTask(context)),
        _space()
      ],
    );
  }

  Column _hard() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(timeHard.inHours.remainder(60));
    final minutes = twoDigits(timeHard.inMinutes.remainder(60));
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff704096),
                borderRadius: BorderRadius.circular(10)
            ),
            height: 50,
            width: double.infinity,
            child: const Center(
              child: Text('Hard Task',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  )
              ),
            ),
          ),
        ),
        _space(),
        _task('The easy challenge is as follows: ${hours} : ${minutes}', _con.onPressedTask(context)),
        _space()
      ],
    );
  }

  Padding _task(String task, function) {
    double? height = 120;
    double? width = 400;
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.black12
                ),
              ),
              alignment: const Alignment(-0.90, -0.65),
              child: Text(task,
                  style: const TextStyle(
                    color: Color(0xff757575),
                    fontSize: 18,
                  )),
            ),
            SizedBox(
              height: height,
              width: width,
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                    onTap: () {
                      function;
                    },
                    child: Container(
                      height: 45,
                      width: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color(0xff5295BE),
                              width: 3
                          )
                      ),
                      alignment: Alignment.center,
                      child: const Text("Let's GO!",
                          style: TextStyle(
                              color: Color(0xff5295BE),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _space() {
    return const SizedBox(
      height: 10,
      width: double.infinity,
    );
  }

  AppBar appBar(context) {
    return AppBar(
      backgroundColor: const Color(0xff704096),
      title: const Text('Daily task'),
      centerTitle: true,
    );
  }

/*
  Column _taskNotTrue(){
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black
            )
          ),
          child: const Center(
              child: Text('Task',
              style: TextStyle(
                color: Colors.pink
              ))
          ),
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black38
              )
            ),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Text1')),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: SizedBox()
                    ),
                    Container(
                      height: 20,
                      width: 100,
                      color: Colors.pink,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Padding _difficulty() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: const Color(0xff704096),
                width: 1.5
            )
        ),
        height: 50,
        width: 100,
        //color: Colors.blue,
      ),
    );
  }
*/
/*Padding _taskTrue(task) {
    return Padding(
        padding: const EdgeInsets.only(right: 40),
        child: Container(
          height: 120,
          width: 400,
          decoration: BoxDecoration(
              color: const Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: Colors.black12
              )
          ),
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 35,
              width: 125,
              color: Colors.blue,
            ),
          ),
        )
    );
  }*/

}

