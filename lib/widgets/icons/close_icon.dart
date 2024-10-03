import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/colors.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: SvgPicture.asset(
        Assets.svg.close,
        height: 13.h,
        width: 13.w,
        colorFilter: const ColorFilter.mode(
          LightAppColors.closeIcon,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
