import 'package:four_colors/features/color_game/domain/entities/color_game_entity.dart';

class ColorGameState {
  final ColorGameEntity currentOption;
  final int score;

  ColorGameState({required this.currentOption, required this.score});

  ColorGameState copyWith({ColorGameEntity? currentOption, int? score}) {
    return ColorGameState(
      currentOption: currentOption ?? this.currentOption,
      score: score ?? this.score,
    );
  }
}
