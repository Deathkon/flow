import 'package:flow/data/repository/popular_product_repo.dart';
import 'package:flow/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  // underscore in dart shows that it is a private object
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isloaded => _isLoaded;
  Future<void> getPopularProductList() async{
   Response response = await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
     print("flow app: popular product list fetched");
     _popularProductList = [];
     _popularProductList.addAll(Product.fromJson(response.body).products);
     // print(_popularProductList);
     _isLoaded = true;
     update();
   }else{

   }
  }
}