import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import 'edit_product.dart';


class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<List<Product>>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add, size: 30.0,),
              onPressed: () {
                try {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Editproduct(Editproduct as Product)));
                } catch (e, s) {
                  print(s);
                }
              },
            )
          ],
        ),
        body: (products != null)
            ? ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                trailing: Text(products[index].price.toString()),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Editproduct(products[index])));
                },
              );
            })
            : Center(child: CircularProgressIndicator())
    );
  }
}