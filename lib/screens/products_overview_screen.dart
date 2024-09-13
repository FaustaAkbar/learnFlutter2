import 'package:application2/providers/chart.dart';
import 'package:application2/screens/card_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../widgets/badge.dart';
import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
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
      ),
      body: ProductGrid(),
    );
  }
}
