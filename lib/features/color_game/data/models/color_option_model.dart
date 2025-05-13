import 'package:flutter/material.dart';
import '../../domain/entities/color_option.dart';

class ColorOptionModel extends ColorOption {
  ColorOptionModel({required super.colorName, required super.displayColor});

  static final List<String> colorNames = ['red', 'blue', 'yellow', 'green'];
  static final List<int> colors = [
    Colors.red.value,
    Colors.blue.value,
    Colors.yellow.value,
    Colors.green.value,
  ];

  static ColorOption getRandom() {
    final rand = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    final nameIndex = rand % colorNames.length;
    final colorIndex = (rand ~/ 2) % colors.length;
    return ColorOption(
      colorName: colorNames[nameIndex],
      displayColor: colors[colorIndex],
    );
  }
}
