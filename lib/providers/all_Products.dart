import 'package:flutter/material.dart';
import 'package:application2/models/product.dart';
import 'dart:math';

class Products with ChangeNotifier {
  List<Product> _myProduct = List.generate(
    27,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );
  List<Product> get MyProduct {
    return [..._myProduct];
  }
}
