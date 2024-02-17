
import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_elevated_button.dart';

class OrderCompletingFinalScreen extends StatelessWidget {
  const OrderCompletingFinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAppreciationBro,
                  height: 322.v,
                  width: 380.h,
                ),
                SizedBox(height: 67.v),
                SizedBox(
                  width: 215.h,
                  child: Text(
                    "Thanks for Shopping with Us",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 52.v),
            CustomElevatedButton(
              height: 57.v,
              width: 233.h,
              text: "Place Order",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001,
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }
}
