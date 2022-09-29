import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Nickname extends StatefulWidget{
  const Nickname({Key? key}) : super(key: key);

  @override
  StateMVC<Nickname> createState() => _Nickname();
}

class _Nickname extends StateMVC<Nickname>{
  @override
  Widget build (BuildContext context){
    return _body();
  }
}

_body(){
  return Column(
    children: [
      const SizedBox(
        height: 200,
        width: 100,
      ),
      _text('Enter name', 24, Colors.black),
      _entry(),
      _text('You can change it later', 20, Colors.black),
      Row(
        children: [
          const SizedBox(
            height: 100,
            width: 300,
          ),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.arrow_forward_sharp))
        ],
      )
    ],
  );
}

/*_body1(){
  return Stack(
    children: [
      _cape0(),
      _cape1()
    ],
  );
}

_cape0(){
  return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xff5271be),
                Color(0xff525bbe),
                Color(0xff404496),
                Color(0xff534096),
                Color(0xff604096),
              ],
              //stops: [0.1, 0.3, 0.4, 0.5, 0.8],
              //begin: Alignment.topRight,
              //end: Alignment.bottomLeft
            )
        ),
      )
  );
}

_cape1(){
  return Column(
    children: [
      const SizedBox(
        height: 200,
        width: 100,
      ),
      _text('Enter name', 24, Colors.white),
      _entry(),
      _text('You can change it later', 20, Colors.white),
      Row(
        children: [
          const SizedBox(
            height: 100,
            width: 420,
          ),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.arrow_forward_sharp))
        ],
      )
    ],
  );
}*/

_entry(){
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      style: TextStyle(
        color: Colors.black
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Nickname',
          hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black
          )
      ),
    ),
  );
}

_text(String text, double? fontSize, Color? color){
  return Text(text,
    style: TextStyle(
      fontSize: fontSize,
      color: color
    ));
}