import 'package:app1/pages/order.dart';
import 'package:app1/pages/profile.dart';
import 'package:app1/pages/wallet.dart';
import 'package:app1/widget/widget_support.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTapIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getAppBarTitle(currentTapIndex),
          style: AppWidget.TitleTextFieldStyle(),
        ),
        backgroundColor: Colors.white10,
        actions: _getAppBarActions(currentTapIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTapIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTapIndex],
    );
  }

  String _getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Hello User,';
      case 1:
        return 'Order';
      case 2:
        return 'Wallet';
      case 3:
        return 'Profile';
      default:
        return '';
    }
  }

  List<Widget> _getAppBarActions(int index) {
    switch (index) {
      case 0: // Home page
        return [
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ];
      case 1: // Order page
        return [
          // Add actions specific to the Order page if needed
        ];
      case 2: // Wallet page
        return [
          // Add actions specific to the Wallet page if needed
        ];
      case 3: // Profile page
        return [
          // Add actions specific to the Profile page if needed
        ];
      default:
        return [];
    }
  }
}
