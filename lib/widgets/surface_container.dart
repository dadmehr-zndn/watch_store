import 'package:flutter/cupertino.dart';
import 'package:watch_store/resources/resources.dart';

class WatchSotreSurfaceContainer extends StatelessWidget {
  final Widget child;
  double? borderRadius;
  WatchSotreSurfaceContainer({
    super.key,
    required this.child,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: LightAppColors.cartProductBG,
        borderRadius: BorderRadius.circular(
          borderRadius ?? Dimens.surfaceContainerBorderRadius,
        ),
      ),
      child: child,
    );
  }
}
