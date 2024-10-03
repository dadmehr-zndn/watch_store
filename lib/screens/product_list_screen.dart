// TODO: uncomment
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/colors.dart';
import 'package:watch_store/resources/dimens.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/app_bars/global_app_bar.dart';
import 'package:watch_store/widgets/brands_tags.dart';
import 'package:watch_store/widgets/icons/cart_icon.dart';
import 'package:watch_store/widgets/icons/close_icon.dart';
import 'package:watch_store/widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: WatchStoreGlobalAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CartIcon(),
                ),
              ),
              Text(
                AppStrings.mostSellings,
                style: LightAppTextStyles.appBarTitle,
              ),
              13.w.width,
              SvgPicture.asset(
                Assets.svg.sort,
                height: 30.h,
                width: 30.w,
                colorFilter: const ColorFilter.mode(
                  LightAppColors.appBarIcon,
                  BlendMode.srcIn,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CloseIcon(),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            19.h.height,
            WatchStoreBrandsTags(),
            24.h.height,

            // P R O D U C T S   L I S T
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.w),
                child: GridView.builder(
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.49.w,
                    mainAxisSpacing: 10.h,
                    mainAxisExtent: 298.h,
                  ),
                  itemBuilder: (context, index) {
                    return WatchStoreProductItem(
                      name: AppStrings.fakeProductName,
                      price: 73000.toPrice(),
                      imagePath: Assets.png.watch.path,
                      discount: 30,
                      previousPrice: 160000.toPrice(),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
