import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';

class WatchStoreStatusItem extends StatelessWidget {
  final String text;
  final String iconPath;
  const WatchStoreStatusItem({
    super.key,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          iconPath,
          height: 39.h,
          width: 39.w,
        ),
        20.h.height,
        Text(
          text,
          style: LightAppTextStyles.status,
        )
      ],
    );
  }
}
