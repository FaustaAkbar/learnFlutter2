import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.blue, centerTitle: true)),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Platform.isAndroid
                ? showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        //Apa bila bukan IOS (Iphone)
                        title: Text("Show DIalog"),
                        content: Text("Are you sure to continue?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                showDatePicker(
                                    onDatePickerModeChange: (value) {
                                      print(value);
                                    },
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1998),
                                    lastDate: DateTime(2026));
                              },
                              child: Text("Yes")),
                          TextButton(onPressed: () {}, child: Text("No"))
                        ],
                      );
                    })
                : showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: height * 0.5,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.monthYear,
                          onDateTimeChanged: (DateTime) {
                            print(DateTime);
                          },
                          initialDateTime: DateTime.now(),
                          minimumDate: DateTime(1993),
                          maximumDate: DateTime(2024),
                        ),
                      );
                    });
          },
          child: Text("Dialog"),
        ),
      ),
    );
  }
}
