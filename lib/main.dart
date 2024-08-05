import 'package:flutter/material.dart';
import 'model/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //Kayaknya berlaku di semua halaman, itulah fungsi theme ketika kita center title di appbar tidak perlu semuanya kita kasih true, cukup disini saja berlaku di semua  halaman
          // brightness: Brightness.dark,//untuk tema dark , light , dll
          //(visualDensity hanya ber efek ke button dll, untuk txt tidak ada)
          // visualDensity: VisualDensity.compact //tampilan nya di kompres (button mengecil) Standart UI/UX
          // visualDensity: VisualDensity.comfortable //tampilannya sedang (buttong mengecil sedang)Standart UI/UX
          // primarySwatch: Colors.blueGrey,
          primarySwatch: MaterialColor(
            0xFFF5E0C3,
            <int, Color>{
              50: Color(0x1aF5E0C3),
              100: Color(0xa1F5E0C3),
              200: Color(0xaaF5E0C3),
              300: Color(0xafF5E0C3),
              400: Color(0xffF5E0C3),
              500: Color(0xffEDD5B3),
              600: Color(0xffDEC29B),
              700: Color(0xffC9A87C),
              800: Color(0xffB28E5E),
              900: Color(0xff936F3E)
            },
          ),
          primaryColor: Colors.yellowAccent,
          textTheme: TextTheme(
              titleLarge: TextStyle(
                  color: Colors
                      .red) //titleLarge, title medium , dll mempengaruhi ukuran text nya juga

              ),
          visualDensity: VisualDensity
              .adaptivePlatformDensity, // mengikuti platformnya android,ios,destop(Standart UI/UX)
          appBarTheme: AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.grey, //Untuk default warna Text appbar
                  fontSize: 40 //Untuk default size text
                  ),
              // backgroundColor: Colors.amber,
              color: Colors.green)),
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
        title: Text(
          "Theme",
          // style: Theme.of(context).textTheme.titleLarge, // Gunakan ini untu menggunakan textTheme
        ),
        // centerTitle: true,
        // backgroundColor: Theme.of(context).primaryColor // Pakai ini untuk menggunakan primaryColor
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is text 1"),
            SizedBox(
              height: 10,
            ),
            Text("This is text 2"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                )),
            Button1(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
    );
  }
}
