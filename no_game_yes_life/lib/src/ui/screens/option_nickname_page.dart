import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/option_nickname_page_controller.dart';
import 'package:no_game_yes_life/src/ui/screens/home_nickname_page.dart';

class OptionsNicknamePage extends StatefulWidget {
  const OptionsNicknamePage({Key? key}) : super(key: key);

  @override
  StateMVC<OptionsNicknamePage> createState() => _OptionsNicknamePageState();
}

class _OptionsNicknamePageState extends StateMVC<OptionsNicknamePage> {
  late OptionNicknamePageController _con;
  late TextEditingController _controller;
  late String newNickname;

  _OptionsNicknamePageState() : super (OptionNicknamePageController()){
    _con = OptionNicknamePageController();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  _appBar(){
    return AppBar(
      backgroundColor: const Color(0xff5295BE),
    );
  }

  _body(){
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        _entry(),
        const SizedBox(
          height: 30,
        ),
        _button()
      ]
    );
  }

  _entry(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _controller,
        style: const TextStyle(
          color: Colors.black
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Nickname',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey
          ),
          contentPadding: EdgeInsets.all(15),
        ),
        onSubmitted: (String newNick){
          setState(() {
            newNickname = newNick;
            _con.setNickname(newNickname);
          });
        },
      ),
    );
  }

  _button(){
    return InkWell(
        onTap: (){

        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff5295BE),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Text('Save changes',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            )),
          ),
        )
    );
  }



}
