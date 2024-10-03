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
  static TextStyle btmNavBarItemSelected = TextStyle(
    color: LightAppColors.btmNavBarItemSelected,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle btmNavBarItemNotSelected = TextStyle(
    color: LightAppColors.btmNavBarIconNotSelectedText,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle searchBarHint = TextStyle(
    color: LightAppColors.searchBarTextHint,
    fontFamily: FontFamily.dana,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle catTitle = TextStyle(
    color: LightAppColors.catTitle,
    fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle seeAll = TextStyle(
    color: LightAppColors.seeAll,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle amazingProducts = TextStyle(
    color: LightAppColors.amazing,
    fontFamily: FontFamily.dana,
    fontSize: 26.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle termsAndConditions = TextStyle(
    color: LightAppColors.profileSectionText,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle status = TextStyle(
    color: LightAppColors.statusText,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle activeAddress = TextStyle(
    color: LightAppColors.profileSectionText,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle profileInfo = TextStyle(
    color: LightAppColors.profileSectionText,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle lastPrice = TextStyle(
    color: LightAppColors.productCertainPrice,
    fontFamily: FontFamily.dana,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle cardProductTitle = TextStyle(
    color: LightAppColors.productTitle,
    fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle cardProductPrice = TextStyle(
    color: LightAppColors.cartProductPrice,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle cardProductDiscount = TextStyle(
    color: LightAppColors.cartProductDiscount,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle secondaryButtonText = TextStyle(
    color: LightAppColors.buttonText,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  // P R I C E
  static TextStyle productTitle = TextStyle(
    color: LightAppColors.productTitle,
    fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle productPrice = TextStyle(
    color: LightAppColors.productCertainPrice,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle productPreviousPrice = TextStyle(
    color: LightAppColors.productPreviousPrice,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.lineThrough,
    decorationThickness: 2,
  );
  static TextStyle productDiscount = TextStyle(
    color: LightAppColors.discountPercentText,
    fontFamily: FontFamily.dana,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle productCountdown = TextStyle(
    color: LightAppColors.productDiscountCountdownTimer,
    fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle appBarTitle = TextStyle(
    color: LightAppColors.appBarTitle,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle brandsTagsText = TextStyle(
    color: LightAppColors.brandsTagsText,
    fontFamily: FontFamily.dana,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle cartBadgeText = TextStyle(
    color: LightAppColors.cartBadgeText,
    fontFamily: FontFamily.dana,
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle appBarSingleTitle = TextStyle(
    color: LightAppColors.appBarTitle,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle productCardName = TextStyle(
    color: LightAppColors.watchBrand,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle productCardShortDetail = TextStyle(
    color: LightAppColors.watchHeadline,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle tabBarItem = TextStyle(
    color: LightAppColors.tabBarItem,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle tabBarFeature = TextStyle(
    color: LightAppColors.watchFeature,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle sendToAddress = TextStyle(
    color: LightAppColors.sendToAddress,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle sendToAddressData = TextStyle(
    color: LightAppColors.sendToAddressData,
    fontFamily: FontFamily.dana,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
}
