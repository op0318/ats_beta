import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';


 final FirebaseStorage _firebasestorage = FirebaseStorage.instance;
 final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;


 class storeData{
  Future<String> uploadImagetoStorage(String childName, Uint8List file)async{
   Reference ref = _firebasestorage.ref().child(childName);
   UploadTask uploadTask = ref.putData(file);
   TaskSnapshot Snapshot = await uploadTask;
   String downloadUrl = await Snapshot.ref.getDownloadURL();
   return downloadUrl;

  }

  Future<String> SaveData({required Uint8List file})async{
   String response = "some error occured";

   try{
    String _imageUrl = await uploadImagetoStorage('profileimage', file);
    await _firebaseFirestore.collection('EmployeeData').add({

     'imageLink': _imageUrl
    });
      response =  "Success";
   }
       catch(err){
          response =err.toString();

       }
       return response;
  }
 }