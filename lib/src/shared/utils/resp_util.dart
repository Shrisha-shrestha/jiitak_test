import 'package:flutter/material.dart';
import 'dart:math' as math;


///Class to give responsive utilities
@immutable
class RespUtil {
  final BuildContext context;

  const RespUtil(this.context);

  ThemeData get thm => Theme.of(context);
  double get wid => MediaQuery.of(context).size.width;
  double get hgt => MediaQuery.of(context).size.height;

  // Max width for responsiveness
  double get maxWid => 600.0;

  // Width Ratio
  // UI design is based on device with width 428.0
  /// Width Ratio of the current device to UI design
  double get wR => math.min(wid, 600) / 428.0;

  ///Return width value if less than 600 other wise return 600
  double get mWidth => math.min(wid, 600);

  Color get primaryColor => thm.primaryColor;
  TextTheme get textTheme => thm.textTheme;

  get colorScheme => null;
}

extension ResponsiveExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double gap(double value) => math.min(value, 600) / 428.0;
}
