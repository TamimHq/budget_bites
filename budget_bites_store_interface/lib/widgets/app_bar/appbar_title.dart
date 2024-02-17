import 'package:budget_bites_store_interface/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
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
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: 216.h,
        child: Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black90002,
            height: 1.31,
          ),
        ),
      ),
    );
  }
}
