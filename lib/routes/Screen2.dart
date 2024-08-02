import 'package:application2/routes/Screen1.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  static const myRoute = 'Screen2';

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Screen 2"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Screen1.myRoute);
              },
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                "My Home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Screen2.myRoute);
              },
              leading: Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          "This is Screen 2",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
