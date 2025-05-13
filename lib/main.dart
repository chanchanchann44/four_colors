import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_colors/features/color_game/application/usecases/generate_color_pair.dart';
import 'package:four_colors/features/color_game/data/repositories/color_game_repository.dart';
import 'package:four_colors/features/color_game/presentation/bloc/color_game_bloc.dart';
import 'package:four_colors/features/color_game/presentation/screens/color_game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => ColorGameBloc(GenerateColorPair(ColorGameRepository())),
        child: ColorGameScreen(),
      ),
    );
  }
}
