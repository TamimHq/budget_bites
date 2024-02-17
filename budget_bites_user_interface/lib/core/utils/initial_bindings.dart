
import 'package:budgets_bites/core/app_export.dart';
import 'package:budgets_bites/core/utils/pref_utils.dart';

import '../../data/api/api_client.dart';
import '../network/network_info.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient(appBaseUrl: ''));
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
