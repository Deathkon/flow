import 'package:flow/pages/cart/cart_page.dart';
import 'package:flow/pages/food/popular_food_detail.dart';
import 'package:flow/pages/food/recommended_food_details.dart';
import 'package:flow/pages/home/home_page.dart';
import 'package:flow/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String initial="/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";
  // functions
  static String getInitial() => '$initial';
  static String getPopularFood(int pageId, String page)=> '$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId, String page)=> '$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';
  // routes
  static List<GetPage> routes =[
    GetPage(name: initial, page: ()=> HomePage()),
    GetPage(name: popularFood, page: (){
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters['page'];
      return PopularFoodDetails(pageId: int.parse(pageId!), page:page!);
    },
      transition: Transition.fadeIn,
    ),

    GetPage(name: recommendedFood, page: (){
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters["page"];
      return RecommendedFoodDetail(pageId: int.parse(pageId!), page:page!);
    },
      transition: Transition.fadeIn,
    ),
    GetPage(name: cartPage, page: (){
      return CartPage();
    },
    transition: Transition.fadeIn
    ),
  ];
}