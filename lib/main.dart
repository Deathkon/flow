import 'package:flow/pages/food/popular_food_detail.dart';
import 'package:flow/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularFoodDetails(),
      // MainFoodPage(),
    );
  }
}
