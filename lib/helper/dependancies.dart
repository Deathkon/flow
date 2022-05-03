import 'package:flow/controllers/popular_product_controller.dart';
import 'package:flow/controllers/recommended_product_controller.dart';
import 'package:flow/data/api/api_client.dart';
import 'package:flow/data/repository/popular_product_repo.dart';
import 'package:flow/data/repository/recommended_product_repo.dart';
import 'package:flow/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async{
  // For Api Client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
  // For repositories
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient:Get.find()));
  // For Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo:Get.find()));
}