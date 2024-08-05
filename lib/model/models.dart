import 'package:flutter/material.dart';

class myModel {
  String url;
  String nama;
  int harga;
  String deskripsi;
  myModel(
      {required this.url,
      required this.nama,
      required this.harga,
      required this.deskripsi});
}

class Button1 extends StatelessWidget {
  final ButtonStyle style;
  Button1({ButtonStyle? style})
      : this.style = style ??
            ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.amber),
            );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {
          return;
        },
        style: style,
        child: Icon(Icons.add));
  }
}
