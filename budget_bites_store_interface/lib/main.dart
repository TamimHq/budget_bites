import 'package:flutter/material.dart';

import 'all pages/add_bank_account_screen/add_bank.dart';
import 'all pages/sign_in/sign_in_screen.dart';
import 'all pages/starting_screen/boot_up_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BootUpScreen(),
    );
  }
}


