import 'package:flutter/material.dart';
import 'package:watch_store/components/components.dart';
import 'package:watch_store/resources/resources.dart';

class LightAppButtonStyles {
  LightAppButtonStyles._();

  static ButtonStyle primaryButton = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(LightAppColors.button),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.small)),
    ),
    textStyle: MaterialStatePropertyAll(LightAppTextStyles.primaryButtonText),
  );
}
