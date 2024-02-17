

import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:budget_bites_store_interface/core/utils/pref_utils.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    //Get.put(ApiClient(appBaseUrl: ''));
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
