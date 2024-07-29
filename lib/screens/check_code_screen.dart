// TODO: uncomment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extensions.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/resources/strings.dart';
import 'package:watch_store/routes/routes_names.dart';
import 'package:watch_store/widgets/logo.dart';
import 'package:watch_store/widgets/primary_button.dart';
import 'package:watch_store/widgets/text_field.dart';

class CheckCodeScreen extends StatelessWidget {
  const CheckCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WatchStoreLogo(),
              47.h.height,
              Text(
                AppStrings.activationCodeSentToNumber
                    .replaceAll('phoneNumber', '09056609471'),
                style: LightAppTextStyles.codeSent,
              ),
              14.h.height,
              Text(
                AppStrings.wrongNumberOrEdit,
                style: LightAppTextStyles.editPhoneNumber,
              ),
              60.5.height,
              WatchStoreTextField(
                label: AppStrings.enterActivationCode,
                hint: AppStrings.enterActivationCodeHint,
                controller: TextEditingController(),
                textAlign: TextAlign.center,
                textInputType: TextInputType.number,
                countdown: '2:05',
              ),
              21.h.height,
              WatchStorePrimaryButton(
                text: AppStrings.continueButton,
                onPressed: () =>
                    Navigator.pushNamed(context, RoutesNames.registerScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
