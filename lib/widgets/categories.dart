import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/cat_item.dart';

class WatchStoreCategories extends StatelessWidget {
  const WatchStoreCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WatchStoreCatItem(
          title: AppStrings.desktop,
          iconPath: Assets.svg.desktop,
          colors: LightAppColors.catDesktop,
        ),
        WatchStoreCatItem(
          title: AppStrings.digital,
          iconPath: Assets.svg.digital,
          colors: LightAppColors.catDigital,
        ),
        WatchStoreCatItem(
          title: AppStrings.smart,
          iconPath: Assets.svg.smart,
          colors: LightAppColors.catSmart,
        ),
        WatchStoreCatItem(
          title: AppStrings.classic,
          iconPath: Assets.svg.classic,
          colors: LightAppColors.catClassic,
        ),
      ],
    );
  }
}
