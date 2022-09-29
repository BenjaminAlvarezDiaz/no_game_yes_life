import 'package:flutter/material.dart';
import 'package:no_game_yes_life/src/ui/screens/daily_task_page.dart';
import 'package:no_game_yes_life/src/ui/screens/options_page.dart';

AppBar appBar(){
  return AppBar(
      title: const Text('Welcome',
        style: TextStyle(fontSize: 28),
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

Widget body(){
  return Column(
    children: [
    ],
  );
}

Builder builderLeading(){
  return Builder(builder: (BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.notification_important_sharp),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => const DailyTask())
        );
      },
      tooltip: ('Daily task'),
    );
  },
  );
}

Builder builderAction(){
  return Builder(builder: (BuildContext context){
    return IconButton(
      icon: const Icon(Icons.menu),
      tooltip: ('Options'),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => const Options()
        )
        );
      },
    );
  });
}