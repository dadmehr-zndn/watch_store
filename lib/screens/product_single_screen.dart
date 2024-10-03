// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/ProductAddingToCart.dart';
import 'package:watch_store/widgets/app_bars/global_app_bar.dart';
import 'package:watch_store/widgets/icons/cart_icon.dart';
import 'package:watch_store/widgets/icons/close_icon.dart';
import 'package:watch_store/widgets/product_card.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: LightAppColors.prodcutSingleScreenBG,
        appBar: WatchStoreGlobalAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CartIcon(),

              // N A M E
              Expanded(
                child: Text(
                  AppStrings.fakeSingleProductFullName,
                  style: LightAppTextStyles.appBarSingleTitle,
                  textDirection: TextDirection.rtl,
                ),
              ),
              CloseIcon(),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            children: [
              // P R O D U C T   I M A G E
              Center(child: Assets.png.watch.image(scale: 0.6)),
              Expanded(child: ProductCard()),
              ProductAddingToCart(
                price: 50000,
                previousPrice: 20000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
