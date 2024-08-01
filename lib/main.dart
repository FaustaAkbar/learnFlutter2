import 'package:flutter/material.dart';
import 'routes/Screen2.dart';
import 'routes/Screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Screen1(),//Kalau sudah menggunakan initialRoute tidak perlu menggunakan home(Tapi bisa saja pake untuk keperluan lain)
      initialRoute: Screen1.myRoute,
      routes: {
        Screen1.myRoute: (context) => Screen1(),
        Screen2.myRoute: (context) => Screen2(),
      },
    );
  }
}
