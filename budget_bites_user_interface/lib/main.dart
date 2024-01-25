import 'package:budgets_bites/all_pages/sign_up/sign_up_screen.dart';
import 'package:budgets_bites/all_pages/starting_screen/boot_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
void main()  {


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
      home: SignUpScreen(),
    );
  }
}


