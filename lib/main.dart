import 'package:flutter/material.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        centerTitle: true,
      )),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wideApp = MediaQuery.of(context).size.width;
    final bodyHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppbar = AppBar(
      title: Text("Layout Builder"),
    );
    final height = bodyHeight - paddingTop - myAppbar.preferredSize.height;
    return Scaffold(
      appBar: myAppbar,
      body: Container(
        color: Colors.greenAccent,
        height: height * 0.3,
        width: wideApp,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(
              // height: height,//tidak perlu lagi height agar container bisa mengikuti ukuran dari container hijau kita gunakan layout builder
              width: wideApp,
            ),
            MyContainer(
              // height: height,//tidak perlu lagi height agar container bisa mengikuti ukuran dari container hijau kita gunakan layout builder
              width: wideApp,
            ),
            MyContainer(
              // height: height,//tidak perlu lagi height agar container bisa mengikuti ukuran dari container hijau kita gunakan layout builder
              width: wideApp,
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final width;
  final a = false;
  MyContainer({required this.width});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: width * 0.3,
          height: constraints.maxHeight * 0.4,
          color: Colors.amber,
          child: a ? Text("Benar") : Text("Salah"),
        );
      },
    );
  }
}
