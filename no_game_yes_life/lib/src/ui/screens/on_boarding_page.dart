import 'package:flutter/material.dart';
import 'package:no_game_yes_life/src/ui/screens/home_nickname_page.dart';
import 'package:no_game_yes_life/src/ui/screens/home_routine_page.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage('assets/images/no_image_available_big.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 500,
            width: 500,
            color: Colors.transparent,
            child: _cape1(),
          )
        ],
      ),
    );
  }

  _cape0() {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage('assets/images/no_image_available_big.jpg'),
              fit: BoxFit.cover
          ),
        ),
      ),
    );
  }

  _cape1() {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      controller: PageController(
          initialPage: 0
      ),
      children: const [
        HomeRoutine(),
        Nickname()
      ],
    );
  }
}