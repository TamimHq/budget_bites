import 'package:budgets_bites/auth/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../FirebaseAuthentication/firebase_auth_controller.dart';
import '../FirebaseAuthentication/user.dart';
class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();
  final  rewritePasswordController = TextEditingController();

  Future<void> registerUser(String email, String password) async {
    try {
      final auth =Authentication.instance;
      await Authentication.instance.createUserWithEmailAndPassword(email, password);
      auth.setInitialScreen(auth.firebaseUser.value);
    } catch (error) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }
  final userRepo =Get.put(UserUse());

  Future <void> createUser(UserModel user) async
  {
    await userRepo.createUser(user);

  }
}