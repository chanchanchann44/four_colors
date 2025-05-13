import 'package:flutter/material.dart';
import 'package:four_colors/core/utils/enum.dart';

class ColorGameEntity {
  final Color textColor;
  final List<ColorName> colorNames;
  final ColorName result;

  ColorGameEntity({
    required this.textColor,
    required this.colorNames,
    required this.result,
  });
}
