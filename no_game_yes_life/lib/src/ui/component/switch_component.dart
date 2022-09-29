import 'package:flutter/material.dart';

class SwitchComponent extends StatefulWidget {
  const SwitchComponent({Key? key}) : super(key: key);

  @override
  State<SwitchComponent> createState() => _SwitchComponentState();
}

class _SwitchComponentState extends State<SwitchComponent> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        activeColor: const Color(0xff5295BE),
        onChanged: (bool value){
          setState(() {
            light = value;
          });
        }
    );
  }
}
