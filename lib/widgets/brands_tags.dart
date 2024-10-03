import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/colors.dart';
import 'package:watch_store/resources/dimens.dart';
import 'package:watch_store/resources/resources.dart';

class WatchStoreBrandsTags extends StatelessWidget {
  const WatchStoreBrandsTags({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            height: 22.h,
            width: 63.w,
            margin: EdgeInsets.only(
              right: index == 0 ? 29.w : 7.w,
              left: index == 7 ? 29.w : 0,
            ),
            decoration: BoxDecoration(
              color: LightAppColors.brandsTagsBG,
              borderRadius: BorderRadius.circular(Dimens.large),
            ),
            child: Center(
              child: Text(
                AppStrings.fakeBrandCasio,
                style: LightAppTextStyles.brandsTagsText,
              ),
            ),
          );
        },
      ),
    );
  }
}
