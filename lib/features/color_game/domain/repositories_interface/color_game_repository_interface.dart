import 'package:four_colors/features/color_game/domain/entities/color_option.dart';

abstract class IColorGameRepository {
  ColorOption getRandomColorOption();
}
