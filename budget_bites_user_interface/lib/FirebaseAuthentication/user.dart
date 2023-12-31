import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../auth/usermodel.dart';


class UserUse extends GetxController {
  static UserUse get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async{
    await _db.collection("Users").add(user.toJson())
        .whenComplete(() =>
        Get.snackbar("Success","Your account has been created.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green),
    )
        .catchError((error, stackTrace){
      Get.snackbar("Error","Something went wrong try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.green);
      print(error.toString());
    });


  }




}