import 'package:faker/faker.dart';
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
    );
  }
}

class MyHomepage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("haii"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (contex, index) {
          return Dismissible(
            key: Key(index.toString()),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(child: Text("${index + 1}")),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              color: Colors.red,
              child: Icon(
                Icons.delete,
                size: 25,
              ),
            ),
            confirmDismiss: (direction) {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirm Delete"),
                      content: Text("Are you sure want to delete?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text("No"))
                      ],
                    );
                  });
            },
            onDismissed: (direction) {
              print("onDismissed");
            },
          );
        },
        itemCount: 10,
      ),
    );
  }
}
