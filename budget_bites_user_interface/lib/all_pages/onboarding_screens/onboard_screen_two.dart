import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_text_style.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,

          child: Column(
            children: [
              SizedBox(
                height: 378.v,
                width: 342.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      alignment: Alignment.topCenter,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIllustration,
                      height: 327.v,
                      width: 342.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              Container(
                width: 326.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 10.h,
                ),
                child: Text(
                  "Test fresh delicious meals anytime",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 294.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    right: 29.h,
                  ),
                  child: Text(
                    "We provide well prepared meal at all hours of the day",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargePoppins,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  /// Section Widget}
