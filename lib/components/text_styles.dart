import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resources/colors.dart';

class LightAppTextStyles {
  LightAppTextStyles._();

  static TextStyle textFieldLabel = TextStyle(
    color: LightAppColors.textFieldLabel,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textFieldHint = TextStyle(
    color: LightAppColors.textHint,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle textFieldInput = TextStyle(
    color: LightAppColors.textFieldInput,
    //TODO: this line make the hint not center
    // fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle primaryButtonText = TextStyle(
    color: LightAppColors.buttonText,
    fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle codeSent = TextStyle(
    color: LightAppColors.codeSent,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle editPhoneNumber = TextStyle(
    color: LightAppColors.editPhoneNumber,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle textBelowAvatar = TextStyle(
    color: LightAppColors.textBelowAvatar,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle registerAppBarTitle = TextStyle(
    color: LightAppColors.textBelowAvatar,
    fontFamily: FontFamily.dana,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
