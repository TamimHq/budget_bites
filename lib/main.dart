import 'package:budgets_bites/verification/email_verification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'FirebaseAuthentication/firebase_auth_controller.dart';
import 'boot_up/splash.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value)=>Get.put(Authentication()));


  runApp(   const MyApp());
}

class MyApp extends StatefulWidget {

   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((value) {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}


