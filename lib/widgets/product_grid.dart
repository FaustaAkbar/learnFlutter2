import 'package:application2/providers/all_Products.dart';
import 'package:flutter/material.dart';
import './product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final all_Products = productData.MyProduct;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: all_Products.length,
      itemBuilder: (ctx, i) => ProductItem(
        all_Products[i].id!,
        all_Products[i].title!,
        all_Products[i].imageUrl!,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
