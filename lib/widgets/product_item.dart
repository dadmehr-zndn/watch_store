// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/discount_container.dart';

class WatchStoreProductItem extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String previousPrice;
  final int discount;
  // TODO: not like this
  final String countdown;

  const WatchStoreProductItem({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    this.previousPrice = '',
    this.discount = 0,
    this.countdown = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 298.h,
      width: 162.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: LightAppColors.productBG,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(Dimens.productItemRadius),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // I M A G E
            Padding(
              padding: EdgeInsets.symmetric(vertical: 23.h),
              child: Image.asset(
                imagePath,
                height: 118.h,
                width: 180.w,
              ),
            ),

            // N A M E
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                name,
                style: LightAppTextStyles.productTitle,
              ),
            ),

            22.h.height,

            // P R I C E  &  D I S C O U N T
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // P R I C E
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // TODO: I added toman myself and also direction
                      '$price تومان',
                      style: LightAppTextStyles.productPrice,
                      textDirection: TextDirection.rtl,
                    ),
                    Visibility(
                      visible: discount > 0,
                      child: Text(
                        '$previousPrice',
                        style: LightAppTextStyles.productPreviousPrice,
                      ),
                    ),
                  ],
                ),

                // D I S C O U N T
                WatchStoreDiscountContainer(discount: discount),
              ],
            ),

            18.h.height,

            // D I V I D E R
            Visibility(
              visible: countdown != '',
              child: SizedBox(
                width: 112.w,
                child: Divider(
                  color: LightAppColors.productDiscountCountdownTimer,
                  height: 0,
                ),
              ),
            ),

            12.h.height,

            // C O U N T D O W N
            Visibility(
              visible: countdown != '',
              child: Text(
                AppStrings.fakeProductDiscountCountdown,
                style: LightAppTextStyles.productCountdown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
