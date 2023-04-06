
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../models/products.dart';

class Firestoreservice{
  final FirebaseFirestore _db =  FirebaseFirestore.instance;

  Future<void> saveProduct(Product product){
    return _db.collection('products').doc(product.productId).set(product.toMap());
  }
  Stream<List<Product>> getProducts(){
    return _db.collection('products').snapshots().map((snapshot) => snapshot.docs.map((document) => Product.fromFirestore(document.data())).toList());
  }


}