import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/assets.gen.dart';

class WatchStoreLogo extends StatelessWidget {
  const WatchStoreLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.png.logo.path,
      height: 121.h,
      width: 300.w,
    );
  }
}
