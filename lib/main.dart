import 'package:application2/routes/Screen1.dart';
import 'package:application2/routes/Screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Screen1.myRoute,
      routes: {
        Screen1.myRoute: (context) => Screen1(),
        Screen2.myRoute: (context) => Screen2(),
      },
    );
  }
}
