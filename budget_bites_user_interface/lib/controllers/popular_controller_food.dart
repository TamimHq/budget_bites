import 'package:budgets_bites/data/repository/popular_product_repo.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularFoodController extends GetxController{
  final PopularFoodRepo popularFoodRepo;
  PopularFoodController({required this.popularFoodRepo});
  List<dynamic> _popularFoodList=[];
  List<dynamic> get popularFoodList => _popularFoodList;
  Future<void> getPopularFoodList() async{
    Response response = await popularFoodRepo.getPopularProductList();

    if(response.statusCode==200){
      _popularFoodList=[];
     // _popularFoodList.addAll();
      update();
    }else{

    }

  }
}