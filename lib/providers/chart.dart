import 'package:application2/models/chart_item.dart';
import 'package:flutter/material.dart';

class Chart with ChangeNotifier {
  Map<String, ChartItem> _items = {};
  Map<String, ChartItem> get items => _items;
  int get jumlah {
    return _items.length;
  }

  double get totalHarga {
    var total = 0.0;
    _items.forEach((Key, cartItem) {
      total += cartItem.qty * cartItem.price;
    });
    return total;
  }

  void addChart(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      //ketika sudah tersedia key product id
      _items.update(
        productId,
        (value) => ChartItem(
            id: value.id,
            price: value.price,
            qty: value.qty + 1,
            title: value.title),
      );
    } else {
      //menambah product id baru
      _items.putIfAbsent(
        productId,
        () => ChartItem(
            id: DateTime.now().toString(), price: price, qty: 1, title: title),
      );
    }
    notifyListeners();
  }
}
