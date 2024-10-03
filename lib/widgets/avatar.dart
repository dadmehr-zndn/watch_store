import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/strings.dart';

class Avatar extends StatelessWidget {
  final String text;
  const Avatar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // A V A T A R
        SvgPicture.asset(
          Assets.svg.avatar,
          height: 71.75.h,
          width: 71.75.w,
        ),

        21.h.height,

        // T E X T
        Text(
          text,
          style: LightAppTextStyles.textBelowAvatar,
        ),
      ],
    );
  }
}
