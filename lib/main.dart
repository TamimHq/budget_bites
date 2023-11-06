import 'package:budgets_bites/Dashboard/main_dash_board.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'FirebaseAuthentication/firebase_auth_signup.dart';
import 'auth/sign_in.dart';
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
  bool _firebaseInitialized = false;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((value) {
      setState(() {
        _firebaseInitialized = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Budget Bites',
      home: _firebaseInitialized
          ? StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Splash();
          } else if (snapshot.hasData) {
            return const Dashboard();
          } else {
            return const SignIn();
          }
        },
      )
          : const Splash(),
    );
  }
}


