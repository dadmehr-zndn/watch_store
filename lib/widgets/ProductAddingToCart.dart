// TODO: uncomment
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/buttons/secondary_button.dart';
import 'package:watch_store/widgets/discount_container.dart';

class ProductAddingToCart extends StatelessWidget {
  final int price;
  final int previousPrice;
  final int discount;

  const ProductAddingToCart({
    super.key,
    required this.price,
    this.previousPrice = 0,
    this.discount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // P R I C E   R E L A T E D
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${price.toPrice()} تومان',
                  style:
                      LightAppTextStyles.productPrice.copyWith(fontSize: 16.sp),
                  textDirection: TextDirection.rtl,
                ),
                Visibility(
                  visible: previousPrice > 0,
                  child: Text(
                    previousPrice.toPrice(),
                    style: LightAppTextStyles.productPreviousPrice
                        .copyWith(fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            15.w.width,
            WatchStoreDiscountContainer(
              discount: 15,
              height: 19.h,
              width: 36.w,
              fontSize: 13.sp,
            ),

            // A D D   B U T T O N
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: WatchStoreSecondaryButton(
                    color: LightAppColors.button, text: AppStrings.addToCart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
