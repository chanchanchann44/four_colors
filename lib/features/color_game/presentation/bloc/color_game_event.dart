import 'package:four_colors/core/utils/enum.dart';

abstract class ColorGameEvent {}

class StartGame extends ColorGameEvent {}

class ChooseColor extends ColorGameEvent {
  final ColorName chosenColor;
  ChooseColor(this.chosenColor);
}
