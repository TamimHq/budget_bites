

import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_icon_button.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(35.v),
                        child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.fillPrimary,
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTakeAwayCuate,
                      height: 235.v,
                      width: 336.h,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Center(
                    child: Text(
                      "Deliver to your home",
                      style: CustomTextStyles.headlineSmallPrimary,
                    ),
                  ),

                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 321.h,
                        margin: EdgeInsets.only(
                          left: 3.h,
                          right: 36.h,
                        ),
                        child: Text(
                          "Enjoy a fast and smooth delivery at your doorstep",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargePoppins,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserYellow300,
                      height: 67.v,
                      width: 51.h,
                      margin: EdgeInsets.only(bottom: 67.v),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
