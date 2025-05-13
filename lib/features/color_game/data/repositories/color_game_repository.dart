import 'package:four_colors/features/color_game/data/services/color_game_service.dart';
import 'package:four_colors/features/color_game/domain/entities/color_game_entity.dart';
import 'package:four_colors/features/color_game/domain/repositories_interface/color_game_repository_interface.dart';

class ColorGameRepository implements IColorGameRepository {
  @override
  ColorGameEntity getRandomColorOption() => ColorGameService().generate();
}
