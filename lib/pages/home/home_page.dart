import 'package:flow/pages/home/main_food_page.dart';
import 'package:flow/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    MainFoodPage(),
    Container(child: Center(child: Text("Next Page"))),
    Container(child: Center(child: Text("Next next Page"))),
    Container(child: Center(child: Text("Next next next Page"))),
  ];

  void onTapNav(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.amberAccent,
        showSelectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,),
              // title: Text("home"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive,),
              // title: Text("home"),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              // title: Text("home"),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              // title: Text("home"),
              label: 'Account',
            ),
          ]
      ),
    );
  }
}
