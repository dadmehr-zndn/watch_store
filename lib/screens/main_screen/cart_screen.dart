// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/app_bars/global_app_bar.dart';
import 'package:watch_store/widgets/buttons/secondary_button.dart';
import 'package:watch_store/widgets/product_cart_card.dart';
import 'package:watch_store/widgets/surface_container.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: WatchStoreGlobalAppBar(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppStrings.cart,
              style: LightAppTextStyles.appBarTitle,
            ),
          ),
        ),
        body: Column(
          children: [
            // S E N D  T O  A D D R E S S
            Container(
              margin: EdgeInsets.only(top: 10.h, bottom: 24.h),
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: LightAppColors.surface,
                boxShadow: [
                  BoxShadow(
                    color: LightAppColors.shadow,
                    offset: Offset(0, 3.h),
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.9.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // I C O N
                    SvgPicture.asset(
                      Assets.svg.arrowLeft,
                      height: 15.84.h,
                      width: 7.1.w,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.sendToAddress,
                          style: LightAppTextStyles.sendToAddress,
                        ),
                        12.h.height,
                        Text(
                          AppStrings.fakeLoremSendToAddress,
                          style: LightAppTextStyles.sendToAddressData,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // P R O D U C T S
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 9.w),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: WatchSotreSurfaceContainer(
                      child: WatchSotreProdcutCartCard(count: 1),
                    ),
                  );
                },
              ),
            ),

            // L A S T   P R I C E
            Container(
              height: 55.h,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 19.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // P R I C E
                  Text(
                    'مجموع: ${63500.toPrice()} تومان',
                    style: LightAppTextStyles.lastPrice,
                  ),

                  // B U T T O N
                  WatchStoreSecondaryButton(
                    color: LightAppColors.cartProductButton,
                    text: AppStrings.continueBuying,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
