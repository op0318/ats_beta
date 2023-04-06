
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../firestoreservice/firestoreservice.dart';
import '../models/products.dart';

class ProductProvider with ChangeNotifier {
  final firestoreService = Firestoreservice();
  late String _name;
  late double _price;
  late String _productId;
  var uuid = Uuid();

  //Getters
  String get name => _name;

  double get price => _price;

  //Setters
  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changePrice(String value) {
    _price = double.parse(value);
    notifyListeners();
  }

  // loadValues(Product product){
  //   _name=product.name;
  //   _price=product.price;
  //   _productId=product.productId;
  // }

  saveProduct() {
   // print("$name, $price");
    var newProduct = Product(name: name, price: price, productId: uuid.v4());
    firestoreService.saveProduct(newProduct);


    //   if (_productId == null) {
    //     var newProduct = Product(name: name, price: price, productId: uuid.v4());
    //     firestoreService.saveProduct(newProduct);
    //   } else {
    //     //Update
    //     var updatedProduct =
    //     Product(name: name, price: _price, productId: _productId);
    //     firestoreService.saveProduct(updatedProduct);
    //   }
    // }
    //
    // removeProduct(String productId){
    //   firestoreService.removeProduct(productId);
    // }

  }
}