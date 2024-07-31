import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/colors.dart';

class WatchStoreTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextAlign textAlign;
  String? countdown;
  Widget? assetIcon;

  WatchStoreTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.textInputType = TextInputType.text,
    //TODO: check for it
    this.textAlign = TextAlign.start,
    this.assetIcon,
    this.countdown,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 84.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            // it's 3 because the padding is "87" and at top padding given is "84"
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(countdown ?? '', style: LightAppTextStyles.textFieldLabel),
                Text(label, style: LightAppTextStyles.textFieldLabel),
              ],
            ),
          ),
          11.h.height,
          SizedBox(
            height: 42.h,
            width: double.infinity,
            child: TextField(
              controller: controller,
              keyboardType: textInputType,
              textAlign: textAlign,
              cursorColor: LightAppColors.primary,
              style: LightAppTextStyles.textFieldInput,
              decoration: InputDecoration(
                hintText: hint,
                // TODO: bug -> hint not center and icon only showes up when focused
                prefix: assetIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
