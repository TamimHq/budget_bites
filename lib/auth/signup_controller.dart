import 'package:budgets_bites/auth/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../FirebaseAuthentication/firebase_auth_signup.dart';
import '../FirebaseAuthentication/user.dart';
class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();
  final  rewritePasswordController = TextEditingController();

  void registerUser(String email, String password){
    String? error= Authentication.instance.createUserWithEmailAndPassword(email, password) as String?;
    if(error!= null){
      Get.showSnackbar(GetSnackBar(message: error.toString(),));
    }
  }

  final userRepo =Get.put(UserUse());

  Future <void> createUser(UserModel user) async
  {
    await userRepo.createUser(user);

  }


}