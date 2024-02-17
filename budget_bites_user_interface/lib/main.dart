import 'package:budgets_bites/all_pages/dashboard_screen/main_dash_board.dart';
import 'package:budgets_bites/all_pages/food_screen/food_screen_details.dart';
import 'package:budgets_bites/all_pages/food_screen/popular_food_screen.dart';
import 'package:budgets_bites/all_pages/onboarding_screens/onboard_screen_one.dart';
import 'package:budgets_bites/all_pages/onboarding_screens/onboard_screen_three.dart';
import 'package:budgets_bites/all_pages/onboarding_screens/onboard_screen_two.dart';
import 'package:budgets_bites/all_pages/order_completing_screen/order_complete_screen_one.dart';
import 'package:budgets_bites/all_pages/sign_up/sign_up_screen.dart';
import'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:budgets_bites/helper/dependencies.dart' as dep;

import 'all_pages/onboarding_screens/onboard_screen.dart';
import 'all_pages/profile_screen/profile_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  OnboardingScreen(),
    );
  }
}


