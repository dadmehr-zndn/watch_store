import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';

class WatchStorePrimaryButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const WatchStorePrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 84.w),
      child: SizedBox(
        height: 42.h,
        width: double.infinity,
        child: ElevatedButton(
          style: LightAppButtonStyles.primaryButton,
          onPressed: onPressed,
          child: Text(
            text,
            style: LightAppTextStyles.primaryButtonText,
          ),
        ),
      ),
    );
  }
}
