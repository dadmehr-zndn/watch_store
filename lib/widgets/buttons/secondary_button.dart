import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';

class WatchStoreSecondaryButton extends StatelessWidget {
  final Color color;
  final String text;
  const WatchStoreSecondaryButton({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 110.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(Dimens.secondaryButtonBorderRadius),
      ),
      child: Center(
        child: Text(
          text,
          style: LightAppTextStyles.secondaryButtonText,
        ),
      ),
    );
  }
}
