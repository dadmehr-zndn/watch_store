import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/resources/resources.dart';

class WatchStoreSliderIndicator extends StatelessWidget {
  final bool isCurrent;
  final VoidCallback onTap;

  const WatchStoreSliderIndicator({
    super.key,
    required this.onTap,
    required this.isCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 5.w, right: 5.w),
        height: 10.h,
        width: 10.w,
        decoration: BoxDecoration(
          color: isCurrent
              ? LightAppColors.sliderIndicatorCurrecnt
              : LightAppColors.sliderIndicatorFill,
          border: Border.all(
            color: isCurrent
                ? Colors.transparent
                : LightAppColors.sliderIndicatorBorder,
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
