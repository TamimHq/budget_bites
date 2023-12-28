import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../FirebaseAuthentication/firebase_auth_controller.dart';

class SignInController extends GetxController{
  static SignInController get instance => Get.find();

  final emailController= TextEditingController();
  final passwordController = TextEditingController();

  Future <void> login(String email, String password) async{
    try{
      final auth =Authentication.instance;
      await Authentication.instance.logInWithEmailAndPassword(email,password);
      auth.setInitialScreen(auth.firebaseUser.value);
    } catch(e){
      print('some error occur');
    }
    return null;
  }
}