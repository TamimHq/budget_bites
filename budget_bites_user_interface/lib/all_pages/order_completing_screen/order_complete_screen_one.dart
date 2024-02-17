

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

class OrderCompletingScreenOne extends StatelessWidget {
  const OrderCompletingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAppreciationBro,
              height: 322.v,
              width: 380.h,
              radius: BorderRadius.circular(
                111.h,
              ),
            ),
            SizedBox(height: 47.v),
            Text(
              "Order Completed",
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: 22.v),
            Text(
              "Rate Our Rider",
              style: CustomTextStyles.titleLargeBlack90002Regular,
            ),
            SizedBox(height: 63.v),
            RatingBar.builder(
            initialRating: 2,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
                   ;
            },
          ),
            SizedBox(height: 45.v),
            CustomTextFormField(

              hintText: "Leave FeedBack",
              hintStyle:
              CustomTextStyles.bodyMediumBentonSansRegularBlack90002,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(19.h, 15.v, 10.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEditIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 55.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 20.v,
                right: 30.h,
                bottom: 20.v,
              ),
            ),
            SizedBox(height: 45.v),
            CustomElevatedButton(
              height: 57.v,
              width: 233.h,
              text: "Submit",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA70001,
            ),
            SizedBox(height: 6.v),
          ],
        ),
      ),
    );
  }
}
