import 'package:flow/data/api/api_client.dart';
import 'package:flow/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    // in getData we are passing the endpoint of url
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}