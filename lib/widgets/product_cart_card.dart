import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';

class WatchSotreProdcutCartCard extends StatelessWidget {
  final int count;
  const WatchSotreProdcutCartCard({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // D E T A I L S
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppStrings.fakeSingleProductFullName,
                style: LightAppTextStyles.cardProductTitle,
              ),
              15.h.height,
              Text(
                'قیمت: ${40000.toPrice()} تومان',
                style: LightAppTextStyles.cardProductPrice,
              ),
              Text(
                'با تخفیف: ${70000.toPrice()} تومان',
                style: LightAppTextStyles.cardProductDiscount,
              ),
              Divider(
                color: LightAppColors.cartProductInsideContainerDivider,
                thickness: 1.5,
                indent: 3.5.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.9.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          Assets.svg.delete,
                          height: 23.77.h,
                          width: 21.09.w,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svg.minus,
                      height: 22.h,
                      width: 22.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.8.w),
                      child: Text(
                        '$count عدد',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.svg.plus,
                      height: 22.h,
                      width: 22.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // I M A G E
        Assets.png.watch.image(
          height: 160.h,
          width: 160.w,
        ),
      ],
    );
  }
}
