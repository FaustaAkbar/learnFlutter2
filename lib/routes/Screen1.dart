import 'package:flutter/material.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
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
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (contex) {
            return Screen2();
          }));
        },
        child: Icon(Icons.skip_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
