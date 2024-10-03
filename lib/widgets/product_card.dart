// TODO: uncomment
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/product_details_tab_bar.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width;

    return Container(
      height: 450.h,
      padding: EdgeInsets.only(right: 26.5.w, top: 10.h, left: 26.5.w),
      decoration: BoxDecoration(
        color: LightAppColors.productCardBG,
        borderRadius: BorderRadius.circular(Dimens.prodcutCardRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // B R A N D
          Text(
            AppStrings.fakeProductCardTitle,
            style: LightAppTextStyles.productCardName,
          ),

          // S H O R T   D E T A I L
          Text(
            AppStrings.fakeProductCardDetail,
            style: LightAppTextStyles.productCardShortDetail,
          ),

          Divider(
            color: LightAppColors.tabBarBorder,
            thickness: 2,
          ),

          ProductDetailsTabBar(),
        ],
      ),
    );
  }
}
