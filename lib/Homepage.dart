import 'dart:math';

import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight =
        MediaQuery.of(context).size.height; //mengukur tinggi layar keseluruhan
    final myAppbar = AppBar(
      title: Text("Media Query"),
    );
    final bodyHeight = mediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context)
            .padding
            .top; // total tinggi seluruh layar - tinggi appbar - tinggi pading top atas appbar

    bool isLanscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    // TODO: implement build
    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: (isLanscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.4,
                    width: 300,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.5,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemCount: 10,
                        itemBuilder: (contex, index) {
                          return GridTile(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                color: Color.fromARGB(
                                    125,
                                    Random().nextInt(225),
                                    Random().nextInt(225),
                                    Random().nextInt(225)),
                                child: Text("nsk"),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: 300,
                    color: Colors.amber,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red),
                    height: bodyHeight * 0.7,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (contex, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text("Hendir piron"),
                          );
                        }),
                  )
                ],
              ),
      ),
    );
  }
}
