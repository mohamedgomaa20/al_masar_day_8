import 'package:al_masar_day_8/features/profile/profile_screen.dart';
import 'package:al_masar_day_8/features/search/search_screen.dart';
import 'package:flutter/material.dart';

import 'cart/cart_screen.dart';
import 'home/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "البحث"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "السلة",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "الملف الشخصي",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
