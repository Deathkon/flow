import 'package:flow/controllers/cart_controller.dart';
import 'package:flow/pages/home/main_food_page.dart';
import 'package:flow/utils/app_constants.dart';
import 'package:flow/utils/colors.dart';
import 'package:flow/utils/dimensions.dart';
import 'package:flow/widgets/app_icon.dart';
import 'package:flow/widgets/big_text.dart';
import 'package:flow/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimensions.height20*3,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppICon(icon: Icons.arrow_back_ios,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,

                ),
                SizedBox(width: Dimensions.width20*5,),
                GestureDetector(
                  onTap: (){
                    Get.to(()=>MainFoodPage());
                  },
                  child: AppICon(icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,

                  ),
                ),
                AppICon(icon: Icons.shopping_cart,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,

                ),
              ],
          ),
          ),
          Positioned(
            top: Dimensions.height20*5,
            left: Dimensions.width20,
            right: Dimensions.width20,
            bottom: 0,
            child: Container(
              // "_" is standing for default context
              margin: EdgeInsets.only(top: Dimensions.height15),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GetBuilder<CartController>(builder: (cartController){
                  return  ListView.builder(
                      itemCount: cartController.getItems.length,
                      itemBuilder: (_, index){
                        return Container(
                          width: double.maxFinite,
                          height: 100,
                          child: Row(
                            children: [
                              Container(
                                width: Dimensions.height20*5,
                                height: Dimensions.height20*5,
                                margin: EdgeInsets.only(bottom: Dimensions.height10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          AppConstants.BASE_URL+AppConstants.UPLOAD_URL+cartController.getItems[index].img!
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                                    color: Colors.white
                                ),
                              ),
                              SizedBox (width: Dimensions.width10),
                              Expanded(child: Container(
                                height: Dimensions.height20*5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    BigText(text: cartController.getItems[index].name!,
                                        color: Colors.black54),
                                    SmallText(text: "spicy", color: Colors.black87),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        BigText(text: cartController.getItems[index].price.toString(), color: Colors.redAccent),
                                        Container(
                                          padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: (){
                                                  // popularProduct.setQuantity(false);
                                                },
                                                child: Icon(Icons.remove, color: AppColors.signColor),
                                              ),
                                              SizedBox(width: Dimensions.width10),
                                              BigText(text: "0"), // popularProduct.inCartItems.toString()),
                                              SizedBox(width: Dimensions.width10),
                                              GestureDetector(
                                                  onTap: (){
                                                    //popularProduct.setQuantity(true);
                                                  },
                                                  child: Icon(Icons.add, color: AppColors.signColor)),
                                            ],  // children
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              ),
                            ],
                          ),
                        );
                      },);
                },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
