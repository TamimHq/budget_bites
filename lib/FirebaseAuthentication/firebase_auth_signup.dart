



import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../Dashboard/main_dash_board.dart';
import '../auth/sign_in.dart';
import 'exception_handelar_signup.dart';


class Authentication extends GetxController{
  static Authentication get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?> (_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(()=>const SignIn()):Get.offAll(()=> const Dashboard());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);

      
      firebaseUser!=null ? Get.offAll(()=> const Dashboard()): Get.to(()=>const SignIn());

    }  on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }

    catch(_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;

    }
  }
}