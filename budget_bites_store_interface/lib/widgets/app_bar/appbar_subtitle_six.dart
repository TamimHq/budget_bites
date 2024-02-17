import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitleSix extends StatelessWidget {
  AppbarSubtitleSix({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodyMediumOnPrimary.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
