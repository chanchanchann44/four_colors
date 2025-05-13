import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/color_game_bloc.dart';
import '../bloc/color_game_event.dart';
import '../bloc/color_game_state.dart';
import '../widgets/color_tile.dart';

class ColorGameScreen extends StatelessWidget {
  const ColorGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorGameBloc, ColorGameState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Color Game')),
          body: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Text(
                  state.currentOption.colorName.toUpperCase(),
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(state.currentOption.displayColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Score: ${state.score}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ColorTile(
                            color: Colors.red,
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor('red'),
                                ),
                          ),
                          ColorTile(
                            color: Colors.blue,
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor('blue'),
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ColorTile(
                            color: Colors.yellow,
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor('yellow'),
                                ),
                          ),
                          ColorTile(
                            color: Colors.green,
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor('green'),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
