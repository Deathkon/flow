import 'package:get/get.dart';
class Dimensions{
 static double screenHeight = Get.context!.height;
 static double screenWidth = Get.context!.width;

 // full container dynamic
 static double pageView = screenHeight/2.56;

// 3.72 is a scale factor of our screeh height we took the screen height / 220
 static double pageViewContainer = screenHeight/3.72;
 // 6.83 is a scale factor of our text we took screen height / 120
 static double pageViewTextContainer = screenHeight/6.83;
 // dynamic height for padding and margin
static double height10 = screenHeight/82.05;
static double height15 = screenHeight/54.70;
static double height20 = screenHeight/41.02;
static double height30 = screenHeight/27.35;
// dynamic width for padding and margin
static double width10 = screenHeight/82.05;
static double width15 = screenHeight/54.70;
static double width20 = screenHeight/41.02;
static double width30 = screenHeight/27.35;

// dynamic font
static double font20 = screenHeight/41.02;
// dynamic radius
 static double radius15 = screenHeight/54.70;
static double radius20 = screenHeight/41.02;
static double radius30 = screenHeight/27.35;

}