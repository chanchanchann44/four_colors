import 'dart:math';
import 'package:four_colors/core/constants/color_palette.dart';
import 'package:four_colors/core/utils/enum.dart';
import 'package:four_colors/features/color_game/domain/entities/color_game_entity.dart';

class ColorGameService {
  final Random random = Random();

  ColorGameEntity generate() {
    List<ColorName> shuffleColorNames() {
      List<ColorName> result = [
        ColorName.red,
        ColorName.green,
        ColorName.blue,
        ColorName.yellow,
      ];
      result.shuffle(random);
      return result;
    }

    return ColorGameEntity(
      textColor: ColorPalette.displayColors[random.nextInt(4)],
      colorNames: shuffleColorNames(),
      result: ColorName.values[random.nextInt(4)],
    );
  }
}
