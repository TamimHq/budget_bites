import 'package:flutter/material.dart';



import 'boot_up/splash.dart';

void main() {
  runApp(  const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: const Splash(),
    );
  }
}


