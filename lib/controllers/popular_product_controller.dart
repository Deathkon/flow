import 'package:flow/data/repository/popular_product_repo.dart';
import 'package:flow/models/products_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  // underscroll in dart shows that it is a private object
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async{
   Response response = await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
     if (kDebugMode) {
       print("got products");
     }
     _popularProductList = [];
     _popularProductList.addAll(Product.fromJson(response.body).products);
     update();
   }else{

   }
  }
}