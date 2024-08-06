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
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.blue)),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexibel and Exspanded"),
      ),
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("Flexible 1"),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              color: Colors.amber,
              child: Text("Flexible 2"),
            ),
          ),
          Expanded(
              child: Container(
            height: 100,
            color: Colors.blue,
            child: Text("Hai"),
          ))
        ],
      ),
    );
  }
}
