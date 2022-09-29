import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/options_page_controller.dart';

class Options extends StatefulWidget{
  const Options({Key? key}) : super (key: key);

  @override
  StateMVC<Options> createState() => _Options();
}

class _Options extends StateMVC<Options> {
  late OptionsPageController _con;
  _Options() : super (OptionsPageController()){
    _con = OptionsPageController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: _body(),
      ),
    );
  }

  _body(){
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        _optionNickname('Nickname'),
        const SizedBox(
          height: 10,
        ),
        _optionRoutine('Routine'),
        const SizedBox(
          height: 10,
        ),
        _optionNotifications('Notifications')
      ],
    );
  }

  _optionNickname(String text){
    return InkWell(
        onTap: (){
          _con.onPressedNickname(context);
        },
        child: Container(
          alignment: const Alignment(-0.95, 0),
          height: 40,
          width: double.infinity,
          color: const Color(0xffE0E0E0),
          child: Text(text,
            style: const TextStyle(
              fontSize: 18,
            )
          ),
        )
    );
  }

  _optionRoutine(String text){
    return InkWell(
        onTap: (){
          _con.onPressedRoutine(context);
        },
        child: Container(
          alignment: const Alignment(-0.95, 0),
          height: 40,
          width: double.infinity,
          color: const Color(0xffE0E0E0),
          child: Text(text,
              style: const TextStyle(
                fontSize: 18,
              )
          ),
        )
    );
  }

  _optionNotifications(String text){
    return InkWell(
        onTap: (){
          _con.onPressedNotifications(context);
        },
        child: Container(
          alignment: const Alignment(-0.95, 0),
          height: 40,
          width: double.infinity,
          color: const Color(0xffE0E0E0),
          child: Text(text,
              style: const TextStyle(
                fontSize: 18,
              )
          ),
        )
    );
  }
  AppBar appBar(context) {
    return AppBar(
      backgroundColor: const Color(0xff5295BE),
      title: Text(_con.getTitle()),
      centerTitle: true,
    );
  }
}