import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';

class WatchStoreCatItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final List<Color> colors;

  const WatchStoreCatItem({
    super.key,
    required this.title,
    required this.iconPath,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // I C O N
        Container(
          height: Dimens.catSize.h,
          width: Dimens.catSize.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(Dimens.medium),
          ),
          child: Center(
            child: SvgPicture.asset(
              iconPath,
              height: 49.h,
              width: 49.w,
            ),
          ),
        ),

        7.h.height,

        // T I T L E
        Text(
          title,
          style: LightAppTextStyles.catTitle,
        ),
      ],
    );
  }
}
