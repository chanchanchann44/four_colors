import 'package:flutter/material.dart';
import 'package:four_colors/core/constants/color_palette.dart';
import 'package:four_colors/core/utils/enum.dart';

class ColorBox extends StatelessWidget {
  final ColorName colorName;
  final Function() onTap;

  const ColorBox({required this.colorName, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    switch (colorName) {
      case ColorName.red:
        return Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              color: ColorPalette.red,
              child: const SizedBox.expand(),
            ),
          ),
        );
      case ColorName.green:
        return Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              color: ColorPalette.green,
              child: const SizedBox.expand(),
            ),
          ),
        );
      case ColorName.blue:
        return Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              color: ColorPalette.blue,
              child: const SizedBox.expand(),
            ),
          ),
        );
      case ColorName.yellow:
        return Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              color: ColorPalette.yellow,
              child: const SizedBox.expand(),
            ),
          ),
        );
    }
  }
}
