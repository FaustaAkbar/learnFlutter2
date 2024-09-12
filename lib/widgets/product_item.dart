import 'package:application2/providers/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Product>(context, listen: false);
    print("render");
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: products.id,
            );
          },
          child: Image.network(
            products.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (context, products, child) => IconButton(
              icon: (products.isFavorite)
                  ? Icon(
                      Icons.favorite,
                      color: Colors.yellow,
                    )
                  : Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.yellow,
                    ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                products.statusVaf();
              },
            ),
          ),
          title: Text(
            products.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
