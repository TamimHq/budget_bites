import 'package:flutter/material.dart';
import 'package:budgets_bites/auth/sign_up.dart';
import 'package:budgets_bites/auth/sign_in.dart';

void main() {
  runApp(  const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signing',
      routes: {
        '/signing':(context)=>const SignIn(),
        '/signup':(context)=>const SignUp(),

      },
    );
  }
}


