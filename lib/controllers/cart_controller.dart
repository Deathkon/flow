import 'package:flow/data/repository/cart_repo.dart';
import 'package:flow/models/cart_model.dart';
import 'package:flow/models/products_model.dart';
import 'package:flow/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items={};
  // when you data from the database we convert it into product model for it to be accessible
    void addItem(ProductModel product, int quantity){
      var totalQuantity = 0;
      if(_items.containsKey(product.id!)){
        _items.update(product.id!, (value){
          totalQuantity = value.quantity!+quantity;
          return CartModel(
            id: value.id,
            name: value.name,
            price: value.price,
            img: value.img,
            quantity: value.quantity!+quantity,
            isExist: true,
            time: DateTime.now().toString(),
            product: product,
          );
        });
        if(totalQuantity<=0){
          _items.remove(product.id);
        }
      } else{
        if(quantity>0){
          // it will first check if the items exist to avoid duplicates
          // ! is called bang operator we tell the compiler that it will not be null
          _items.putIfAbsent(product.id!, () {
            return CartModel(
              id: product.id,
              name: product.name,
              price: product.price,
              img: product.img,
              // we need to take whatever quantity we get
              quantity: quantity,
              //isExist is a boolean
              isExist: true,
              time: DateTime.now().toString(),
              product: product,
            );
          });
        }else{
          Get.snackbar("Item Count", "You should at least add an item in the cart!",
            backgroundColor: AppColors.mainColor,
            colorText:  Colors.white,
          );
        }
      }
      update();
    }
    bool existInCart(ProductModel product) {
     if (_items.containsKey(product.id)) {
       return true;
     }
     return false;
   }
    int getQuantity(ProductModel product){
      var quantity = 0;
      if(_items.containsKey(product.id)){
        _items.forEach((key, value) {
          if(key==product.id){
            quantity = value.quantity!;
          }
        });
      }
      return quantity;
   }
    // here is a get method but it doesn't need the parameters because we will be returning the the field/ variables
    int get totalItems{
      var totalQuantity = 0;
      _items.forEach((key, value) {
        // long form of the below code in detailed line
        // totalQuantity = totalQuantity + value.quantity!;
        // short form in single line
        totalQuantity += value.quantity!;
      });
      return totalQuantity;
   }

   List<CartModel> get getItems{
      return _items.entries.map((e){
       return e.value;
  }).toList(); // toList is converting a map into List
  }

  int get totalAmount{
      var total = 0;
      _items.forEach((key, value) {
        total += value.quantity!*value.price!;
      });
      return total;
  }
}