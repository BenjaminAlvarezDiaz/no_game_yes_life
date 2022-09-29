import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class OptionsNicknamePage extends StatefulWidget {
  const OptionsNicknamePage({Key? key}) : super(key: key);

  @override
  StateMVC<OptionsNicknamePage> createState() => _OptionsNicknamePageState();
}

class _OptionsNicknamePageState extends StateMVC<OptionsNicknamePage> {
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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style: TextStyle(
          color: Colors.black
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Nickname',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey
          ),
          contentPadding: EdgeInsets.all(15),
        ),
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
