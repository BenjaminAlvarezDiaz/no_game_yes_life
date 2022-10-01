import 'package:flutter/material.dart';
import 'package:no_game_yes_life/src/providers/task_provider.dart';
import 'package:provider/provider.dart';
import 'src/ui/screens/home_page.dart';

void main() {
  runApp(
      MultiProvider(providers:[
        ChangeNotifierProvider(create: (_) => Task())
        ],
          child: const MyApp())
  );
}