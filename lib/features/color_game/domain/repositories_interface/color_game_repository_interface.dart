import 'package:four_colors/features/color_game/domain/entities/color_game_entity.dart';

abstract class IColorGameRepository {
  ColorGameEntity getRandomColorOption();
}
