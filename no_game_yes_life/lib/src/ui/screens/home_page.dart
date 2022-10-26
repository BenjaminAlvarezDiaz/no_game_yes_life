import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/home_page_controller.dart';
import 'package:no_game_yes_life/src/ui/screens/daily_task_page.dart';
import 'package:no_game_yes_life/src/ui/screens/hobby_stop_watch_page.dart';
import 'package:no_game_yes_life/src/ui/screens/home_nickname_page.dart';
import 'package:no_game_yes_life/src/ui/screens/on_boarding_page.dart';
import 'package:no_game_yes_life/src/ui/component/button_component.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xff704096)),
      routes: {
        'DailyTask' : (context) => const DailyTask(),
        'Task' : (context) => const HobbyStopWatch()
      },
    );
  }
}

class Home extends StatefulWidget{
  const Home({Key? key}) : super (key: key);

  @override
  StateMVC<Home> createState() => _Home();
}

class _Home extends StateMVC<Home> {
  late HomePageController _con;

  _Home() : super (HomePageController()) {
    _con = HomePageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appBar(),
          body: Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/main_background.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0),
                  child: SizedBox(
                      width: 400,
                      height: 800,
                      child: body()
                  ),
                )
              ]
          ),
        )
    );
  }


  AppBar appBar() {
    return AppBar(
        title: const Text('',
          style: TextStyle(fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff704096),
        shadowColor: const Color(0xff704096),
        elevation: 0,
        actions: [
          builderAction()
        ],
        leading: builderLeading()
    );
  }

  Widget body() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        welcomeUsername(),
        space(),
        buttonStart(),
      ],
    );
  }

  Builder builderLeading() {
    return Builder(builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {
          _con.onPressedTask(context);
        },
        tooltip: ('Daily task'),
      );
    },
    );
  }

  Builder builderAction() {
    return Builder(builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.menu),
        tooltip: ('Options'),
        onPressed: () {
          _con.onPressedOptions(context);
        },
      );
    });
  }

  Container welcomeUsername() {
    return Container(
      alignment: const Alignment(0, -0.78),
      height: 500,
      width: 300,
      child: SizedBox(
        height: 150,
        width: 300,
        child: Column(
          children: [
            const Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50)
            ),
            userName(_con.getNickname())
          ],
        ),
      ),
    );
  }

  SizedBox userName(String nickname) {
    return SizedBox(
        height: 50,
        width: 150,
        child: Align(
          alignment: const Alignment(0, 0),
          child: Text(nickname, style: const TextStyle(
              color: Colors.white,
              fontSize: 28
            ),
          ),
        )
    );
  }

  Builder buttonStart() {
    return Builder(builder: (BuildContext context) {
      return SizedBox(
          height: 60,
          width: 300,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(
                color: Color(0xff5295BE),
                width: 4.0,
              ),
            ),
            onPressed: () {
              _con.onPressedHobbyStopWatch(context);
            },
            child: const Text('Start!',
                style: TextStyle(
                    color: Color(0xff5295BE),
                    fontSize: 32)
            ),
          )
      );
    });
  }

  Widget space() {
    return const SizedBox(
      height: 30,
      width: 300,
    );
  }
}