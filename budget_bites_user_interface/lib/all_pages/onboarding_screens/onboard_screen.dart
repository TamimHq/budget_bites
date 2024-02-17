import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_elevated_button.dart';
import 'onboard_screen_one.dart';
import 'onboard_screen_three.dart';
import 'onboard_screen_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 8.v,
              ),
              height: MediaQuery.sizeOf(context).height * 0.8,
              width: MediaQuery.sizeOf(context).width,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  OnboardingScreenOne(),
                  OnboardingScreenTwo(),
                  OnboardingScreenThree(),
                ],
              ),
            ),
            SizedBox(
              height: 10.v,
            ),
            SmoothPageIndicator(
              effect: ExpandingDotsEffect(expansionFactor: 3, offset: 15),
              controller: _pageController,
              count: 3,
            ),
            SizedBox(height: 40.v),
            CustomElevatedButton(
              text: "Continue",
              height: 45.v,
              width: 160.h,
              buttonStyle: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red[900]),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              onPressed: () {},
            ),
            SizedBox(height: 5.v),
            TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: CustomTextStyles.titleSmallPoppinsGray50001,
              ),
            )
          ],
        ),
      ),
    );
  }
}
