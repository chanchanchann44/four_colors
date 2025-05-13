abstract class ColorGameEvent {}

class StartGame extends ColorGameEvent {}

class ChooseColor extends ColorGameEvent {
  final String chosenColor;
  ChooseColor(this.chosenColor);
}
