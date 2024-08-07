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
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        centerTitle: true,
      )),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  DateTime myTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Haloo"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person),
                    ),
                    Text(
                      "Halo Fausta Akbar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("");
              },
              leading: Icon(Icons.home),
              title: Text(
                "My Homepage",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myTime.toString()),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1998),
                    lastDate: DateTime(2029),
                  ).then((onValue) {
                    if (onValue != null) {
                      setState(() {
                        myTime = onValue;
                      });
                    }
                  });
                },
                child: Text("Date"))
          ],
        ),
      ),
    );
  }
}
