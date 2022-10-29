import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/option_routine_page_controller.dart';

class OptionsRoutinePage extends StatefulWidget {
  const OptionsRoutinePage({Key? key}) : super(key: key);

  @override
  StateMVC<OptionsRoutinePage> createState() => _OptionsRoutinePageState();
}

class _OptionsRoutinePageState extends StateMVC<OptionsRoutinePage> {
  late OptionRoutinePageController _con;
  late TextEditingController _controller;
  late double? newRoutine;
  
  _OptionsRoutinePageState() : super (OptionRoutinePageController()){
    _con = OptionRoutinePageController();
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
          const Padding(
            padding: EdgeInsets.only(top: 40,bottom: 20, left: 30, right: 30),
            child: Text('How many hours do you want to play per day? '
                '(It has to be less time than the current one)',
              style: TextStyle(
                  fontSize: 20)
            ),
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
            hintText: 'New routine',
            hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey
            ),
          contentPadding: EdgeInsets.all(15)
        ),
        onSubmitted: (String routine){
          setState(() {
            newRoutine = double.tryParse(routine);
            _con.setRoutine(newRoutine!);
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