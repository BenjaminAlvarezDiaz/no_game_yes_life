import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/src/ui/component/switch_component.dart';
import 'package:no_game_yes_life/src/ui/screen_controllers/option_notifications_page_controller.dart';

class OptionsNotificationsPage extends StatefulWidget {
  const OptionsNotificationsPage({Key? key}) : super(key: key);

  @override
  StateMVC<OptionsNotificationsPage> createState() => _OptionsNotificationsPage();
}

class _OptionsNotificationsPage extends StateMVC<OptionsNotificationsPage> {
  late OptionNotificationsPageController _con;
  _OptionsNotificationsPage() : super (OptionNotificationsPageController()){
    _con = OptionNotificationsPageController();
  }

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar(){
    return AppBar(
      backgroundColor: const Color(0xff5295BE),
      centerTitle: true,
      title: const Text('Notifications'),
    );
  }

  _body(){
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        _title('General'),
        _optionNotification('Notifications'),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment(-1,0),
            child: ElevatedButton(
              onPressed: (){
                _displayDialog(context);
                },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xff5295BE)),
              ),
              child: const Text('Notifications tones'),
            ),
          ),
        ),
        _optionNotification('Vibration'),
        const Divider(
          height: 5,
        ),
        const SizedBox(
          height: 20,
        ),
        _title('Daily task'),
        _optionNotification('Notify me about new tasks'),
        const Divider(
          height: 5,
        ),
        const SizedBox(
          height: 20,
        ),
        _title('Timer'),
        _optionNotification('Notify me when the counter ends')
      ],
    );
  }

  _optionNotification(String text){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(text, style: const TextStyle(fontSize: 18)),
          const SwitchComponent()
          /*Switch(
              value: light,
              activeColor: const Color(0xff5295BE),
              onChanged: (bool value){

                //_con.onPressedNotificationOption(value, light);
              }
          )*/
        ],
      ),
    );
  }

  _title(String title){
    return Align(
      alignment: const Alignment(-0.90, 0),
      child: Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    );
  }

  _displayDialog(context){
    return showDialog(
        context: context,
        builder: (context){
          return SimpleDialog(
            title: const Text('Chose notifications tone'),
            children: [
              SimpleDialogOption(
                onPressed: (){
                  print('Siuuuuuuuu');
                  Navigator.pop(context);
            },
                child: Text('Tone1'),
          ),
              SimpleDialogOption(
                onPressed: (){
                  print('Nouuuuuuu');
                  Navigator.pop(context);
            },
                child: Text('Tone2'),
          )
        ],
      );
    });
  }



}
