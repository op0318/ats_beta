
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';
import '../provider/productprovider.dart';

class Editproduct extends StatefulWidget {
  final Product product;
  Editproduct(this.product);

  @override
  State<Editproduct> createState() => _EditproductState();
}

class _EditproductState extends State<Editproduct> {
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Product')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(hintText: 'Product Name'),
              onChanged: (value) {
                productProvider.changeName(value);
              },
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(hintText: 'Product Price'),
              onChanged: (value) => productProvider.changePrice(value),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: (){
                productProvider.saveProduct();
            }, child: const Text('Save')),
            ElevatedButton(onPressed: (){}, child: Text('Delete')),
            // RaisedButton(
            //   child: Text('Save'),
            //   onPressed: () {
            //     productProvider.saveProduct();
            //     Navigator.of(context).pop();
            //   },
            // ),
            // (widget.product !=null) ? RaisedButton(
            //   color: Colors.red,
            //   textColor: Colors.white,
            //   child: Text('Delete'),
            //   onPressed: () {
            //     productProvider.removeProduct(widget.product.productId);
            //     Navigator.of(context).pop();
            //   },
            // ): Container(),
          ],
        ),
      ),
    );
  }
}
