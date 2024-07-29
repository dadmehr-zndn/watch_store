import 'package:flutter/material.dart';

extension CustomSizedBox on double {
  SizedBox get height => SizedBox(height: this);
  SizedBox get width => SizedBox(width: this);
}
