import 'package:flow/data/repository/popular_product_repo.dart';
import 'package:flow/data/repository/recommended_product_repo.dart';
import 'package:flow/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController{
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  // underscore in dart shows that it is a private object
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isloaded => _isLoaded;
  Future<void> getRecommendedProductList()async{
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if(response.statusCode==200){
      print("flow app: recommended product list is fetched");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      // print(_popularProductList);
      _isLoaded = true;
      update();
    }else{
      print("flow app: could not get recommended product list");
    }
  }
}