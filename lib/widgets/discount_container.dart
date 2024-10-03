import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';

class WatchStoreDiscountContainer extends StatelessWidget {
  WatchStoreDiscountContainer({
    super.key,
    this.discount = 0,
    this.height,
    this.width,
    this.fontSize,
  });

  final int discount;
  double? height;
  double? width;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: discount > 0,
      child: Container(
        height: height ?? 18.h,
        width: width ?? 34.w,
        decoration: BoxDecoration(
          color: LightAppColors.discountPercentBG,
          borderRadius: BorderRadius.circular(Dimens.productDiscountRadius),
        ),
        child: Center(
          child: Text(
            '$discount %',
            style:
                LightAppTextStyles.productDiscount.copyWith(fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
