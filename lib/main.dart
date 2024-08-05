import 'package:application2/Homepage.dart';
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
      home: MyHomepage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.blue, centerTitle: true)),
    );
  }
}
