import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/logo.dart';

class WatchStoreSearchBar extends StatelessWidget {
  const WatchStoreSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 37.w),
      height: Dimens.searchBarHeight,
      decoration: BoxDecoration(
          color: LightAppColors.searchBarBG,
          borderRadius: BorderRadius.circular(1000),
          boxShadow: [
            BoxShadow(
              color: LightAppColors.searchBarShadow,
              offset: Offset(0, 3.h),
              blurRadius: 1,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            Assets.svg.search,
            height: 24.h,
            width: 24.w,
          ),
          Text(
            AppStrings.search,
            style: LightAppTextStyles.searchBarHint,
          ),
          WatchStoreLogo(
            height: 39.h,
            width: 98.w,
          ),
        ],
      ),
    );
  }
}
