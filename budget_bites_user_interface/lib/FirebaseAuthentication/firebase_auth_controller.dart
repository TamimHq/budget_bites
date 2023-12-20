
import 'package:budgets_bites/FirebaseAuthentication/exception_handelar_verification.dart';
import 'package:budgets_bites/verification/email_verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../Dashboard/main_dash_board.dart';
import '../auth/sign_in.dart';
import 'exception_handelar_signup.dart';

class Authentication extends GetxController {
  static Authentication get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());

     setInitialScreen(firebaseUser.value);
    
  }

  setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const SignIn());
    } else {
      if (user.emailVerified) {
        Get.offAll(() => const DashBoardMainScreen());
      } else {
        print('Navigating to VerificationMail');
        Get.offAll(() => const VerificationMail());
      }
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      firebaseUser != null
          ? Get.offAll(() => const DashBoardMainScreen())
          : Get.to(() => const SignIn());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }
  Future <void> logInWithEmailAndPassword(String email, String password) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);

    } catch(e){
      print('some error occur');
    }
    return null;
  }


  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      final ex = VerificationFailure.code(e.code);
      throw ex.message;
    } catch (_) {
      const ex = VerificationFailure();
      throw ex.message;
    }
  }
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      Get.offAll(()=> const SignIn());
    } catch (e) {
      print("Error during sign out: $e");
    }
  }

}
