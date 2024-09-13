import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/chart.dart';

class CardScreen extends StatelessWidget {
  static const routeName = '/card';

  @override
  Widget build(BuildContext context) {
    final cardData = Provider.of<Chart>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: Container(
                padding: EdgeInsets.all(20),
                child: Text("Total: ${cardData.totalHarga}")),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: cardData.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          "${cardData.items.values.toList()[index].title}"),
                      subtitle: Text(
                          "Quantity : ${cardData.items.values.toList()[index].qty}"),
                      trailing: Container(
                        child: Text(
                            "${cardData.items.values.toList()[index].qty * cardData.items.values.toList()[index].price}"),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
