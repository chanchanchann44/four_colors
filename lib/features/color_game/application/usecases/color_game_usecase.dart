import '../../domain/entities/color_game_entity.dart';
import '../../domain/repositories_interface/color_game_repository_interface.dart';

class ColorGameUsecase {
  final IColorGameRepository repository;

  ColorGameUsecase(this.repository);

  ColorGameEntity execute() => repository.getRandomColorOption();
}
