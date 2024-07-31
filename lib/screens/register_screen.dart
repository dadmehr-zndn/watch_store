// TODO: uncomment
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resources/resources.dart';
import 'package:watch_store/routes/routes_names.dart';
import 'package:watch_store/widgets/app_bars/register_app_bar.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/icons/location_icon.dart';
import 'package:watch_store/widgets/primary_button.dart';
import 'package:watch_store/widgets/text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: LightAppColors.onBoardingSurface,
        appBar: WatchStoreRegisterAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Avatar(
                text: AppStrings.chooseProfile,
              ),
              38.h.height,

              // F U L L   N A M E
              WatchStoreTextField(
                controller: _textEditingController,
                label: AppStrings.fullname,
                hint: AppStrings.fullnameHint,
                textAlign: TextAlign.end,
              ),

              Dimens.textFieldDistance.height,

              // L A N D I N G   N U M B E R
              WatchStoreTextField(
                controller: _textEditingController,
                label: AppStrings.landlinePhone,
                hint: AppStrings.landlinePhoneHint,
                textAlign: TextAlign.end,
              ),

              Dimens.textFieldDistance.height,

              // A D D R E S S
              WatchStoreTextField(
                controller: _textEditingController,
                label: AppStrings.address,
                hint: AppStrings.addressHint,
                textAlign: TextAlign.end,
              ),

              Dimens.textFieldDistance.height,

              // P O S T A L   C O D E
              WatchStoreTextField(
                controller: _textEditingController,
                label: AppStrings.postalCode,
                hint: AppStrings.postalCodeHint,
                textAlign: TextAlign.end,
              ),

              Dimens.textFieldDistance.height,

              // L O C A T I O N
              WatchStoreTextField(
                controller: _textEditingController,
                label: AppStrings.location,
                hint: AppStrings.locationHint,
                textAlign: TextAlign.end,
                assetIcon: WatchStoreLocationIcon(),
              ),

              29.h.height,

              // R E G I S T E R   B U T T O N
              WatchStorePrimaryButton(
                text: AppStrings.register,
                onPressed: () =>
                    Navigator.pushNamed(context, RoutesNames.mainScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
