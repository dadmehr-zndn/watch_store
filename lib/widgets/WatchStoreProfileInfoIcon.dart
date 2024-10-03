// TODO: uncomment
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';

class WatchStoreProfileInfoIcon extends StatelessWidget {
  final String text;
  final String iconPath;
  const WatchStoreProfileInfoIcon({
    super.key,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 13.3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: LightAppTextStyles.profileInfo,
          ),
          5.w.width,
          SvgPicture.asset(
            iconPath,
            height: 17.h,
            width: 17.w,
          ),
        ],
      ),
    );
  }
}
