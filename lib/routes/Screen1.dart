import 'package:application2/routes/Screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static const myRoute = 'Screen1';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Screen 1"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.red,
              alignment: Alignment.bottomCenter,
              child: Text(
                "Menu",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
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
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "This is Screen 1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
