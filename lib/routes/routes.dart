import 'package:flutter/material.dart';
import 'package:watch_store/routes/routes_names.dart';
import 'package:watch_store/screens/screens.dart';

Map<String, Widget Function(BuildContext)> routes = {
  RoutesNames.root: (_) => const SendCodeScreen(),
  RoutesNames.checkCodeScreen: (_) => const CheckCodeScreen(),
  RoutesNames.registerScreen: (_) => RegisterScreen(),
  RoutesNames.mainScreen: (_) => const MainScreen(),
  RoutesNames.homeScreen: (_) => const HomeScreen(),
  RoutesNames.cartScreen: (_) => const CartScreen(),
  RoutesNames.profileScreen: (_) => const ProfileScreen(),
};
