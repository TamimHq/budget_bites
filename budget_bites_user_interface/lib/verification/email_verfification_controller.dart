import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../FirebaseAuthentication/firebase_auth_controller.dart';

class MailVerificationController extends GetxController{
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    sendVerificationMail();
    setTimerForAutoRedirect();
  }

  Future<void> sendVerificationMail() async {
    try{
      await Authentication.instance.sendEmailVerification();
    }catch(e){
      Get.showSnackbar(GetSnackBar(message: e.toString()));
    }
  }

  void setTimerForAutoRedirect(){
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      FirebaseAuth.instance.currentUser ?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if(user!.emailVerified)
        {
          timer.cancel();
          Authentication.instance.setInitialScreen(user);
        }
    });
  }

  void manuallyCheckEmailVerificationStatus(){
    FirebaseAuth.instance.currentUser ?.reload();
    final user = FirebaseAuth.instance.currentUser;
    if(user!.emailVerified)
    {
      Authentication.instance.setInitialScreen(user);
    }

  }
}
