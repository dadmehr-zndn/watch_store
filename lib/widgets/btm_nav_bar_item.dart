import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';

class BtmNavBarItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool isActive;
  final void Function() onTap;
  const BtmNavBarItem({
    super.key,
    required this.iconPath,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: LightAppColors.btmNavBarBG,
        width: 110.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: must using cart icon
            SvgPicture.asset(
              iconPath,
              height: 29.22.h,
              width: 29.22.w,
              colorFilter: ColorFilter.mode(
                isActive
                    ? LightAppColors.btmNavBarItemSelected
                    : LightAppColors.btmNavBarIconNotSelected,
                BlendMode.srcIn,
              ),
            ),
            9.5.h.height,
            Text(
              text,
              style: isActive
                  ? LightAppTextStyles.btmNavBarItemSelected
                  : LightAppTextStyles.btmNavBarItemNotSelected,
            ),
          ],
        ),
      ),
    );
  }
}
