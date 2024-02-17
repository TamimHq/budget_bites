

import 'package:budgets_bites/core/app_export.dart';
import 'package:flutter/cupertino.dart';

class OnBoardScreen extends GetxController{
  static OnBoardScreen get instance => Get.find();

  final pageController = PageController();

    Rx<int> currentPageIndex =0.obs;



}