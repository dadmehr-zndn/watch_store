// TODO: uncomment
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/resources/colors.dart';
import 'package:watch_store/resources/strings.dart';
import 'package:watch_store/routes/routes_names.dart';
import 'package:watch_store/widgets/logo.dart';
import 'package:watch_store/widgets/primary_button.dart';
import 'package:watch_store/widgets/text_field.dart';
import '../components/extensions.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightAppColors.onBoardingSurface,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WatchStoreLogo(),
              116.h.height,
              WatchStoreTextField(
                controller: TextEditingController(),
                label: AppStrings.enterYourNumber,
                hint: AppStrings.enterYourNumberHint,
                textAlign: TextAlign.center,
              ),
              24.h.height,
              WatchStorePrimaryButton(
                onPressed: () =>
                    Navigator.pushNamed(context, RoutesNames.checkCodeScreen),
                text: AppStrings.sendActivationCode,
              )
            ],
          ),
        ),
      ),
    );
  }
}
