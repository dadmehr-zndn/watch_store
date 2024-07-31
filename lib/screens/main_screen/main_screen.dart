// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/screens/main_screen/cart_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import 'package:watch_store/widgets/btm_nav_bar_item.dart';

class BtmNavBarItemIndex {
  BtmNavBarItemIndex._();

  static const int home = 0;
  static const int cart = 1;
  static const int profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtmNavBarItemIndex.home;

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _cartKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();
  late final map = {
    BtmNavBarItemIndex.home: _homeKey,
    BtmNavBarItemIndex.cart: _cartKey,
    BtmNavBarItemIndex.profile: _profileKey,
  };

  final List<int> _navigationHistory = [BtmNavBarItemIndex.home];

  void _onPopInvoked(bool didPop) {
    if (map[selectedIndex]!.currentState!.canPop()) {
      map[selectedIndex]!.currentState!.pop();
    } else if (_navigationHistory.length > 1) {
      setState(() {
        _navigationHistory.removeLast();
        selectedIndex = _navigationHistory.last;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: _onPopInvoked,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: Dimens.btmNavBar,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  Navigator(
                    key: _homeKey,
                    onGenerateRoute: (settings) => MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
                  Navigator(
                    key: _cartKey,
                    onGenerateRoute: (settings) => MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  ),
                  Navigator(
                    key: _profileKey,
                    onGenerateRoute: (settings) => MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: Dimens.btmNavBar,
                width: double.infinity,
                //TODO: remove
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BtmNavBarItem(
                      iconPath: Assets.svg.profileIcon,
                      text: AppStrings.profile,
                      isActive: selectedIndex == BtmNavBarItemIndex.profile,
                      onTap: () =>
                          tappedOnNavBarItem(BtmNavBarItemIndex.profile),
                    ),
                    BtmNavBarItem(
                      iconPath: Assets.svg.cartNav,
                      text: AppStrings.cart,
                      isActive: selectedIndex == BtmNavBarItemIndex.cart,
                      onTap: () => tappedOnNavBarItem(BtmNavBarItemIndex.cart),
                    ),
                    BtmNavBarItem(
                      iconPath: Assets.svg.homeNav,
                      text: AppStrings.home,
                      isActive: selectedIndex == BtmNavBarItemIndex.home,
                      onTap: () => tappedOnNavBarItem(BtmNavBarItemIndex.home),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  tappedOnNavBarItem(int index) {
    setState(() {
      selectedIndex = index;
      _navigationHistory.add(selectedIndex);
    });
  }
}
