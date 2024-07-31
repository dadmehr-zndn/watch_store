/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFakeSliderImagesGen {
  const $AssetsFakeSliderImagesGen();

  /// File path: assets/fake_slider_images/a.jpg
  AssetGenImage get a => const AssetGenImage('assets/fake_slider_images/a.jpg');

  /// File path: assets/fake_slider_images/b.jpg
  AssetGenImage get b => const AssetGenImage('assets/fake_slider_images/b.jpg');

  /// File path: assets/fake_slider_images/c.jpg
  AssetGenImage get c => const AssetGenImage('assets/fake_slider_images/c.jpg');

  /// File path: assets/fake_slider_images/d.jpg
  AssetGenImage get d => const AssetGenImage('assets/fake_slider_images/d.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [a, b, c, d];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/png/logo.png');

  /// File path: assets/png/watch.png
  AssetGenImage get watch => const AssetGenImage('assets/png/watch.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo, watch];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_left.svg
  String get arrowLeft => 'assets/svg/arrow_left.svg';

  /// File path: assets/svg/avatar.svg
  String get avatar => 'assets/svg/avatar.svg';

  /// File path: assets/svg/back.svg
  String get back => 'assets/svg/back.svg';

  /// File path: assets/svg/cancelled.svg
  String get cancelled => 'assets/svg/cancelled.svg';

  /// File path: assets/svg/cart_nav.svg
  String get cartNav => 'assets/svg/cart_nav.svg';

  /// File path: assets/svg/classic.svg
  String get classic => 'assets/svg/classic.svg';

  /// File path: assets/svg/close.svg
  String get close => 'assets/svg/close.svg';

  /// File path: assets/svg/delete.svg
  String get delete => 'assets/svg/delete.svg';

  /// File path: assets/svg/delivered.svg
  String get delivered => 'assets/svg/delivered.svg';

  /// File path: assets/svg/desktop.svg
  String get desktop => 'assets/svg/desktop.svg';

  /// File path: assets/svg/digital.svg
  String get digital => 'assets/svg/digital.svg';

  /// File path: assets/svg/home_nav.svg
  String get homeNav => 'assets/svg/home_nav.svg';

  /// File path: assets/svg/location.svg
  String get location => 'assets/svg/location.svg';

  /// File path: assets/svg/minus.svg
  String get minus => 'assets/svg/minus.svg';

  /// File path: assets/svg/phone.svg
  String get phone => 'assets/svg/phone.svg';

  /// File path: assets/svg/plus.svg
  String get plus => 'assets/svg/plus.svg';

  /// File path: assets/svg/postal_code.svg
  String get postalCode => 'assets/svg/postal_code.svg';

  /// File path: assets/svg/processing.svg
  String get processing => 'assets/svg/processing.svg';

  /// File path: assets/svg/profile_icon.svg
  String get profileIcon => 'assets/svg/profile_icon.svg';

  /// File path: assets/svg/profile_nav.svg
  String get profileNav => 'assets/svg/profile_nav.svg';

  /// File path: assets/svg/search.svg
  String get search => 'assets/svg/search.svg';

  /// File path: assets/svg/smart.svg
  String get smart => 'assets/svg/smart.svg';

  /// File path: assets/svg/sort.svg
  String get sort => 'assets/svg/sort.svg';

  /// List of all assets
  List<String> get values => [
        arrowLeft,
        avatar,
        back,
        cancelled,
        cartNav,
        classic,
        close,
        delete,
        delivered,
        desktop,
        digital,
        homeNav,
        location,
        minus,
        phone,
        plus,
        postalCode,
        processing,
        profileIcon,
        profileNav,
        search,
        smart,
        sort
      ];
}

class Assets {
  Assets._();

  static const $AssetsFakeSliderImagesGen fakeSliderImages =
      $AssetsFakeSliderImagesGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
