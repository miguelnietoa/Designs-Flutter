import 'package:designs/src/screens/buttons_screen.dart';
import 'package:flutter/material.dart';
import 'package:designs/src/screens/basic_screen.dart';
import 'package:designs/src/screens/scroll_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      // change initialRoute if you want to see the other screens
      initialRoute: 'buttons',
      routes: {
        'basic': (BuildContext context) => BasicScreen(),
        'scroll': (BuildContext context) => ScrollScreen(),
        'buttons': (BuildContext context) => ButtonsScreen(),
      },
    );
  }
}
