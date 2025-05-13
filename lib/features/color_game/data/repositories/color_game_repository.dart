import 'package:four_colors/features/color_game/data/models/color_option_model.dart';
import 'package:four_colors/features/color_game/domain/entities/color_option.dart';
import 'package:four_colors/features/color_game/domain/repositories_interface/color_game_repository_interface.dart';

class ColorGameRepository implements IColorGameRepository {
  @override
  ColorOption getRandomColorOption() => ColorOptionModel.getRandom();
}