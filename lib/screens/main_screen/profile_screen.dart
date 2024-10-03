// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/widgets/WatchStoreProfileInfoIcon.dart';
import 'package:watch_store/widgets/app_bars/global_app_bar.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/status_item.dart';
import 'package:watch_store/widgets/surface_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: WatchStoreGlobalAppBar(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppStrings.profile,
              style: LightAppTextStyles.appBarTitle,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(21.w, 26.h, 21.w, 0),
            child: Column(
              children: [
                // P R O F I L E
                Avatar(text: AppStrings.username),

                // U S E R   I N F O
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.7.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            Assets.svg.arrowLeft,
                            height: 15.84.h,
                            width: 7.1.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                AppStrings.activeAddress,
                                style: LightAppTextStyles.activeAddress,
                              ),
                              9.2.h.height,
                              Text(
                                AppStrings.fakeLoremSendToAddress,
                                style: LightAppTextStyles.activeAddress
                                    .copyWith(fontSize: 11.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                      19.6.h.height,
                      WatchStoreProfileInfoIcon(
                        text: '112233445566',
                        iconPath: Assets.svg.postalCode,
                      ),
                      WatchStoreProfileInfoIcon(
                        text: '09056609471',
                        iconPath: Assets.svg.phone,
                      ),
                      WatchStoreProfileInfoIcon(
                        text: AppStrings.username,
                        iconPath: Assets.svg.profileIcon,
                      )
                    ],
                  ),
                ),

                // T E R M  &  C O N D I T I O N S
                WatchSotreSurfaceContainer(
                  borderRadius: 12.r,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 27.w, vertical: 15.h),
                    child: Text(
                      AppStrings.termAndConditions,
                      style: LightAppTextStyles.termsAndConditions,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),

                13.h.height,

                // S T A T U S
                WatchSotreSurfaceContainer(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 32.5.w, vertical: 37.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WatchStoreStatusItem(
                          text: AppStrings.delivered,
                          iconPath: Assets.svg.delivered,
                        ),
                        WatchStoreStatusItem(
                          text: AppStrings.cancelled,
                          iconPath: Assets.svg.cancelled,
                        ),
                        WatchStoreStatusItem(
                          text: AppStrings.proccessing,
                          iconPath: Assets.svg.processing,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
