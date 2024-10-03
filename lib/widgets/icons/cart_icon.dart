import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 29.22.h,
          width: 37.18.w,
          child: Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
              Assets.svg.cartNav,
              height: 29.22.h,
              width: 29.22.w,
              colorFilter: const ColorFilter.mode(
                LightAppColors.appBarIcon,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 2.w,
          child: Container(
            height: 20.4.h,
            width: 20.4.w,
            decoration: BoxDecoration(
              color: LightAppColors.cartBadgeBG,
              shape: BoxShape.circle,
              border: Border.all(color: LightAppColors.cartBadgeBorder),
            ),
            child: Center(
              child: Text(
                AppStrings.fakeCartCountItem,
                style: LightAppTextStyles.cartBadgeText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
