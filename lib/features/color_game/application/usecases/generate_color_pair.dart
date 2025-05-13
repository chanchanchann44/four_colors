import '../../domain/entities/color_option.dart';
import '../../domain/repositories_interface/color_game_repository_interface.dart';

class GenerateColorPair {
  final IColorGameRepository repository;

  GenerateColorPair(this.repository);

  ColorOption execute() => repository.getRandomColorOption();
}
