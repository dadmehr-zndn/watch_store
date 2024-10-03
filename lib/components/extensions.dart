import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension CustomSizedBox on double {
  SizedBox get height => SizedBox(height: this);
  SizedBox get width => SizedBox(width: this);
}

extension PriceDivider on int {
  String toPrice() {
    final pattern = NumberFormat.decimalPattern();
    final formatedPrice = pattern.format(this);
    return formatedPrice;
  }
}
