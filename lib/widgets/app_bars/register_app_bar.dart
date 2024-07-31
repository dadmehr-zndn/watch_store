import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';

import '../../resources/resources.dart';

class WatchStoreRegisterAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const WatchStoreRegisterAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, Dimens.registerAppBarHeight),
      child: Center(
        child: Container(
          color: LightAppColors.appBarBG,
          height: Dimens.registerAppBarHeight,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimens.registerAppBarHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    Assets.svg.back,
                    height: 17.h,
                    width: 17.w,
                  ),
                ),
                Text(
                  AppStrings.register,
                  style: LightAppTextStyles.registerAppBarTitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Dimens.registerAppBarHeight);
}
