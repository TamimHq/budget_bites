import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        body: SizedBox(
          width: double.maxFinite,

          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 584.v,
                  width: 354.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgContrastRed50,
                        height: 66.v,
                        width: 53.h,
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                            SizedBox(height: 5.v),
                            _buildViewStack(),
                            SizedBox(height: 20.v),
                            Container(
                              width: 280.h,
                              margin: EdgeInsets.only(
                                left: 28.h,
                                right: 18.h,
                              ),
                              child: Text(
                                "Your Comfort food lies here",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.headlineSmallPrimary,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              width: 323.h,
                              margin: EdgeInsets.only(right: 3.h),
                              child: Text(
                                "Order your favourite meal and taste greatness",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .bodyLargePoppinsOnPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  /// Section Widget
  Widget _buildViewStack() {
    return Container(
      height: 295.v,
      width: 328.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 1.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup234,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 38.h),
              padding: EdgeInsets.symmetric(
                horizontal: 48.h,
                vertical: 5.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup29,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 161.v),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.lightGreen700,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup13,
            height: 150.v,
            width: 160.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 33.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup18,
            height: 68.v,
            width: 120.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 15.h,
              bottom: 42.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 22.v,
            width: 30.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 41.v,
              right: 45.h,
            ),
          ),
        ],
      ),
    );
  }
}
