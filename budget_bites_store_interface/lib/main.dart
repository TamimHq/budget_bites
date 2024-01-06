import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_three.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_two.dart';
import 'package:budget_bites_store_interface/all_pages/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'all_pages/add_bank_account_screen/add_bank.dart';
import 'all_pages/onboarding_screens/onboard_screen_final.dart';
import 'all_pages/onboarding_screens/onboard_screen_one.dart';
import 'all_pages/profile_completation_screen/complete_profile.dart';
import 'all_pages/sign_in/sign_in_screen.dart';


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
      home: const CompleteProfileScreen(),
    );
  }
}


