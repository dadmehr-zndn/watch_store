import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';

class WatchStoreLocationIcon extends StatelessWidget {
  const WatchStoreLocationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.svg.location,
      height: 24.h,
      width: 24.h,
    );
  }
}
