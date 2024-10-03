// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';

class ProductDetailsTabBar extends StatefulWidget {
  const ProductDetailsTabBar({super.key});

  @override
  State<ProductDetailsTabBar> createState() => _ProductDetailsTabBarState();
}

class _ProductDetailsTabBarState extends State<ProductDetailsTabBar> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        // I T E M S
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            reverse: true,
            itemCount: AppStrings.fakeTabViewItems.length,
            physics: NeverScrollableScrollPhysics(),
            itemExtent: width * .2899,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => setState(() {
                  selectedTabIndex = index;
                }),
                child: Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      AppStrings.fakeTabViewItems[index],
                      style: selectedTabIndex == index
                          ? LightAppTextStyles.tabBarItem.copyWith(
                              color: LightAppColors.tabBarSelectedItem)
                          : LightAppTextStyles.tabBarItem,
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        IndexedStack(
          index: selectedTabIndex,
          children: [
            Text(
              AppStrings.fakeProductLorem,
              style: LightAppTextStyles.tabBarFeature,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
            ),
            Text('Review'),
            Text('Comments'),
          ],
        ),
      ],
    );
  }
}
