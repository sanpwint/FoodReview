import 'package:flutter/material.dart';
import 'package:foodreviewapp/ui/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.pinkAccent,
          )),
      home: RootPage(),
    );
  }
}
