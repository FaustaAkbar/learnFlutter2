import 'package:flutter/material.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  static const myRoute = '/Screen1';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: Text("Heheheh1"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* Navigator.of(context).push(MaterialPageRoute(builder: (context) {//Bisa menggunakan push dan pop
            return Screen2();
          })); */
          /* Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (contex) { // ketika scren 2 di push scren1 digantikan
            return Screen2();
          })); */
          Navigator.of(context).pushNamed(Screen2.myRoute);
        },
        child: Icon(Icons.skip_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
