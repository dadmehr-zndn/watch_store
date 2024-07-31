import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/assets.gen.dart';

class WatchStoreLogo extends StatelessWidget {
  double? height = 121.h;
  double? width = 300.h;
  WatchStoreLogo({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.png.logo.path,
      height: height,
      width: width,
    );
  }
}
