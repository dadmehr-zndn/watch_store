import 'package:flutter/material.dart';
import 'package:watch_store/components/text_styles.dart';
import 'package:watch_store/resources/colors.dart';
import 'package:watch_store/resources/dimens.dart';

ThemeData get lightTheme {
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Color(0xff000000)),
    colorScheme: const ColorScheme.light(background: LightAppColors.surface),
    primaryColor: LightAppColors.primary,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.small),
          borderSide: const BorderSide(color: LightAppColors.textFieldBorder)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.small),
        borderSide: const BorderSide(color: LightAppColors.textFieldBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.small),
        borderSide:
            const BorderSide(color: LightAppColors.textFieldBorderSelected),
      ),
      fillColor: LightAppColors.textFieldFill,
      filled: true,
      prefixIconColor: LightAppColors.textFieldPrefixIcon,
      contentPadding: EdgeInsets.fromLTRB(
          Dimens.textFieldIconPadding, 0, Dimens.textFieldContentPadding, 0),
      hintStyle: LightAppTextStyles.textFieldHint,
    ),
  );
}
