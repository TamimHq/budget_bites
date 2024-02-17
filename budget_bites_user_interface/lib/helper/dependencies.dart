import 'package:budgets_bites/controllers/popular_controller_food.dart';
import 'package:budgets_bites/data/api/api_client.dart';
import 'package:budgets_bites/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async{
  //api clients
  Get.lazyPut(()=>ApiClient(appBaseUrl: " "));

  //repos
  Get.lazyPut(() => PopularFoodRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularFoodController(popularFoodRepo: Get.find()));

}