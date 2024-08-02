import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'model/models.dart';
import 'dart:math';

//This is final project model
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<myModel> dummyData = List.generate(20, (index) {
      return myModel(
          url: "https://picsum.photos/id/$index/300",
          nama: faker.food.dish(),
          harga: Random().nextInt(1000),
          deskripsi: faker.lorem.sentence());
    });
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Product",
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (expect, index) {
            return GridTile(
              child: Image.network(dummyData[index].url),
              footer: Container(
                height: 80,
                alignment: Alignment.center,
                color: Colors.green.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      dummyData[index].nama,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Harga: ${dummyData[index].harga}",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      dummyData[index].deskripsi,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
