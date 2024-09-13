import 'package:application2/providers/all_Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:application2/providers/chart.dart';
import '../widgets/badge.dart';
import 'card_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // Safely access ModalRoute and arguments
    final routeArgs = ModalRoute.of(context)?.settings.arguments;
    final chart = Provider.of<Chart>(context, listen: false);
    final appbarr = AppBar(
      title: Text('Product Details'),
      actions: [
        Consumer<Chart>(
          builder: (context, value, ch) {
            return Badgee(
              child: ch ??
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
              value: value.jumlah.toString(),
            );
          },
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CardScreen.routeName);
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        )
      ],
    );
    final product = Provider.of<Products>(context)
        .MyProduct
        .firstWhere((prduct_id) => prduct_id.id == routeArgs);
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appbarr.preferredSize.height;
    return Scaffold(
        appBar: appbarr,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.3,
              child: Image.network(
                "${product.imageUrl}",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text("${product.description}"),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Berhasil ditambahkan"),
                    duration: Duration(milliseconds: 500),
                  ));
                  chart.addChart(product.id, product.title, product.price);
                },
                child: Text("Add to chart")),
          ],
        ));
  }
}
