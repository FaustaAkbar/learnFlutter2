import 'package:flutter/material.dart';
import 'package:application2/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _myProduct = [];
  List<Product> get MyProduct {
    return [..._myProduct];
  }
}
