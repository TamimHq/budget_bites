import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../widgets/custom_image_view.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: "asset/images/avatar.jpg",
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      radius: BorderRadius.circular(
                        25.h,
                      ),
                      margin: EdgeInsets.only(bottom: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                            style: CustomTextStyles.titleMediumPoppins,
                          ),
                          SizedBox(height: 11.v),
                          Text(
                            "012929292",
                            style: CustomTextStyles.bodyMediumGray700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  color: appTheme.blueGray100,
                  indent: 20.h,
                  endIndent: 28.h,
                ),
              ),
              SizedBox(height: 17.v),
              _buildUserVerification(),
              SizedBox(height: 16.v),
              Container(
                height: 8.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray50,
                ),
              ),
              SizedBox(height: 23.v),
              _buildUserProfile(),
              SizedBox(height: 16.v),
              Container(
                height: 8.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray50,
                ),
              ),
              SizedBox(height: 24.v),
              _buildCommunicationPreferences(),
              SizedBox(height: 18.v),
              Container(
                height: 8.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray50,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 5.v,
                      ),
                      child: Text(
                        "Log Out",
                        style: CustomTextStyles.labelLargePoppinsRed600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTrash2,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Delete Your Account",
                        style: CustomTextStyles.bodyMediumSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgNavArrow1,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
      actions: [
        AppbarSubtitleFive(
          text: "edit",
          margin: EdgeInsets.fromLTRB(14.h, 18.v, 14.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserVerification() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 25.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLockGray700,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 3.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 7.v,
                bottom: 3.v,
              ),
              child: Text(
                "Email",
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Spacer(),
            CustomElevatedButton(
              height: 29.v,
              width: 80.h,
              text: "verify",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimarySemiBold,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Locations".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 7.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "Home".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 29.v,
                  width: 60.h,
                  text: "add".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimarySemiBold,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.blueGray100,
            endIndent: 10.h,
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBriefcase,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "work".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 29.v,
                  width: 60.h,
                  text: "add".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallOnPrimarySemiBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommunicationPreferences() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 28.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Communication Preferences",
              style: theme.textTheme.bodyMedium,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSmallArrow2,
              height: 12.v,
              width: 7.h,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 2.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
