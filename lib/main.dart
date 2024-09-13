import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        )),
        home: /* ChangeNotifierProvider(
          create: (context) => Counter(),
          child: Homepage(),
        ) */
            MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => Counter(),
            )
          ],
          child: Homepage(),
        ));
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterr = Provider.of<Counter>(context, listen: false);
    print("Render");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(
            builder: (context, value, child) => Text(
              "${value._jumlah}",
              style: TextStyle(fontSize: 100),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: counterr.add,
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: counterr.minus,
                icon: Icon(Icons.remove),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _jumlah = 0;
  int get jumlah => _jumlah;

  void add() {
    _jumlah += 1;
    notifyListeners();
  }

  void minus() {
    _jumlah -= 1;
    notifyListeners();
  }
}
