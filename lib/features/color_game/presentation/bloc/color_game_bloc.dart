import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_colors/features/color_game/application/usecases/generate_color_pair.dart';

import 'color_game_event.dart';
import 'color_game_state.dart';

class ColorGameBloc extends Bloc<ColorGameEvent, ColorGameState> {
  final GenerateColorPair generateColorPair;

  ColorGameBloc(this.generateColorPair)
      : super(ColorGameState(
            currentOption: generateColorPair.execute(), score: 0)) {
    on<StartGame>((event, emit) {
      emit(ColorGameState(currentOption: generateColorPair.execute(), score: 0));
    });

    on<ChooseColor>((event, emit) {
      final correct = event.chosenColor.toLowerCase() ==
          state.currentOption.colorName.toLowerCase();
      emit(ColorGameState(
        currentOption: generateColorPair.execute(),
        score: correct ? state.score + 1 : state.score,
      ));
    });
  }
}