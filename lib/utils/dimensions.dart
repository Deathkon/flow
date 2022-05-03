import 'package:get/get.dart';
class Dimensions{
 static double screenHeight = Get.context!.height;
 static double screenWidth = Get.context!.width;

 // full container dynamic
 static double pageView = screenHeight/2.56;

// 3.72 is a scale factor of our screen height we took the screen height / 220
 static double pageViewContainer = screenHeight/3.72;
 // 6.83 is a scale factor of our text we took screen height / 120
 static double pageViewTextContainer = screenHeight/6.83;
 // dynamic height for padding and margin
static double height10 = screenHeight/82.05;
static double height15 = screenHeight/54.70;
static double height20 = screenHeight/41.02;
static double height30 = screenHeight/27.35;
static double height40 = screenHeight/20.51;
static double height45 = screenHeight/18.23;
static double height50 = screenHeight/16.41;

// dynamic width for padding and margin
static double width05 = screenWidth/164.11;
static double width10 = screenHeight/82.05;
static double width15 = screenHeight/54.70;
static double width20 = screenHeight/41.02;
static double width30 = screenHeight/27.35;
static double width40 = screenHeight/20.51;
static double width45 = screenHeight/18.23;

// dynamic font size
static double font16 = screenHeight/51.28;
static double font20 = screenHeight/41.02;
static double font26 = screenHeight/31.56;
static double font30 = screenHeight/27.35;
// dynamic radius
static double radius15 = screenHeight/54.70;
static double radius20 = screenHeight/41.02;
static double radius30 = screenHeight/27.35;
// icon size 24
static double iconSize24 = screenHeight/34.19;
static double iconSize16 = screenHeight/52.75;


// list view size
static double listViewImgSize = screenWidth/3.25;
static double listViewTextContSize = screenWidth/3.9;

// popular food
 static double popularFoodImgSize = screenHeight/2.34;

// Details bottom height
 static double bottomHeightBar = screenHeight/6.83;
}