import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomepage(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.blue, centerTitle: true)),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Fited Box"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              // width: 100,
              height: 100,
              width: 100,
              color: Colors.red,
              child: FittedBox(
                  child: Text(
                      "kasdladsalfalfsdalfjdtfghfhdfhfhfghfdhfhfdhfhfdhfdh")),
            ),
            Container(
              // alignment: Alignment.center, //Jangan gunakan aligment disini kalau mau menggunakan fit pada FittedBox
              // width: 100,
              height: 100,
              width: 100,
              color: Colors.red,
              child: FittedBox(
                  alignment: Alignment.center, //gunakan disini
                  fit: BoxFit.cover, //bisa fill, contain, cover dll
                  child: Image.network("https://picsum.photos/200/300")),
            ),
          ],
        ),
      ),
    );
  }
}
