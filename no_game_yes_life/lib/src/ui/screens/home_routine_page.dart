import 'package:flutter/material.dart';

class HomeRoutine extends StatefulWidget{
  const HomeRoutine ({Key? key}) : super(key: key);

  @override
  State<HomeRoutine> createState() => _HomeRoutine();
}

class _HomeRoutine extends State<HomeRoutine>{
  @override
  Widget build (BuildContext context){
    return _body();
  }
}

_body(){
  return Column(
    children: [
      Container(
        color: Colors.transparent,
        height: 200,
        width: 100,
      ),
      _text('Enter routine', 24, Colors.black),
      _entry(),
      _text('You can change it later', 20, Colors.black),
      Row(
        children: [
          Container(
            color: Colors.transparent,
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

_cape0(){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/no_image_available_big.jpg'),
          fit: BoxFit.cover
      )
    ),
  );
}

_cape1(){
  return Column(
    children: [
      const SizedBox(
        height: 200,
        width: 100,
      ),
      _text('Enter routine', 24, Colors.white),
      _entry(),
      _text('You can change it later', 20, Colors.white),
      Row(
        children: [
          const SizedBox(
            height: 100,
            width: 420,
          ),
          IconButton(onPressed: (){

            },
              icon: const Icon(Icons.arrow_forward_sharp))
        ],
      )
    ],
  );
}

_entry(){
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      style: TextStyle(
          color: Colors.black
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Routine',
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
      )
  );
}