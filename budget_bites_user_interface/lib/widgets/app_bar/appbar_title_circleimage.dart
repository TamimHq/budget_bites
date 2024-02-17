import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTitleCircleImage extends StatelessWidget {
  AppbarTitleCircleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder23,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 50.adaptSize,
          width: 50.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            25.h,
          ),
        ),
      ),
    );
  }
}
