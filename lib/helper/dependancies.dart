import 'package:flow/controllers/popular_product_controller.dart';
import 'package:flow/data/api/api_client.dart';
import 'package:flow/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async{
  // For Api Client
  Get.lazyPut(()=>ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));
  // For repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // For Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}