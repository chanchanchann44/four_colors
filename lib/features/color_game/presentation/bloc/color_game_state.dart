import 'package:four_colors/features/color_game/domain/entities/color_option.dart';

class ColorGameState {
  final ColorOption currentOption;
  final int score;

  ColorGameState({required this.currentOption, required this.score});

  ColorGameState copyWith({ColorOption? currentOption, int? score}) {
    return ColorGameState(
      currentOption: currentOption ?? this.currentOption,
      score: score ?? this.score,
    );
  }
}
