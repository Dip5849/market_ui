import 'package:flutter/material.dart';
import 'package:market_ui/repository/screens/cart/cartscreen.dart';
import 'package:market_ui/repository/screens/category/catregoryscreen.dart';
import 'package:market_ui/repository/screens/home/homeScreen.dart';
import 'package:market_ui/repository/screens/printscreen/printscreen.dart';
import 'package:market_ui/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CatregoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "cart.png"),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "category.png"),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer.png"),
            label: 'Print',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 124, 13, 252),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 10,

        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 12),
      ),
    );
  }
}
