import 'package:flutter/material.dart';
import 'package:watch_store/routes/routes_names.dart';
import 'package:watch_store/screens/product_list_screen.dart';
import 'package:watch_store/screens/product_single_screen.dart';
import 'package:watch_store/screens/screens.dart';

Map<String, Widget Function(BuildContext)> routes = {
  RoutesNames.sendCodeScreen: (_) => const SendCodeScreen(),
  RoutesNames.verifyCodeScreen: (_) => const VerifyCodeScreen(),
  RoutesNames.registerScreen: (_) => RegisterScreen(),
  RoutesNames.mainScreen: (_) => const MainScreen(),
  RoutesNames.homeScreen: (_) => HomeScreen(),
  RoutesNames.cartScreen: (_) => const CartScreen(),
  RoutesNames.profileScreen: (_) => const ProfileScreen(),
  RoutesNames.productListScreen: (_) => const ProductListScreen(),
  RoutesNames.productSingleScreen: (_) => const ProductSingleScreen(),
};
