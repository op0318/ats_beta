
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/Employeemodel.dart';
import '../models/products.dart';

class Firestoreservice{
  final FirebaseFirestore _db =  FirebaseFirestore.instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  get match => null;

  Future<void> saveProduct(Product product){
    return _db.collection('products').doc(product.productId).set(product.toMap());
  }
  Stream<List<Product>> getProducts(){
    return _db.collection('products').snapshots().map((snapshot) => snapshot.docs.map((document) => Product.fromFirestore(document.data())).toList());
  }
  
  Future <void> GetEmpdetails(Employees employee) async {
     await _db.collection('Employee').where("Empid").get();
  }


}