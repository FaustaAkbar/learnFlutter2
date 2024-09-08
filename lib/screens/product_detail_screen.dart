import 'package:application2/providers/all_Products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // Safely access ModalRoute and arguments
    final routeArgs = ModalRoute.of(context)?.settings.arguments;
    final appbarr = AppBar(
      title: Text('Product Details'),
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
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${product.title}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text("${product.description}")
          ],
        ));
  }
}
