import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/resources/resources.dart';

class WatchStoreGlobalAppBar extends StatelessWidget implements PreferredSize {
  @override
  final Widget child;

  const WatchStoreGlobalAppBar({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimens.appBarPadding),
        height: 59.h,
        decoration: BoxDecoration(
          color: LightAppColors.appBarBG,
          boxShadow: [
            BoxShadow(
              color: LightAppColors.shadow,
              offset: Offset(0, 3.h),
              blurRadius: 1,
            ),
          ],
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(Dimens.medium),
            bottomLeft: Radius.circular(Dimens.medium),
          ),
        ),
        child: child,
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 59.h);
}
