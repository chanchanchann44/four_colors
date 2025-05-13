import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/color_game_bloc.dart';
import '../bloc/color_game_event.dart';
import '../bloc/color_game_state.dart';
import '../widgets/color_box.dart';

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
                  state.currentOption.result.name.toUpperCase(),
                  style: TextStyle(
                    fontSize: 36,
                    color: state.currentOption.textColor,
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
                          ColorBox(
                            colorName: state.currentOption.colorNames[0],
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor(
                                    state.currentOption.colorNames[0],
                                  ),
                                ),
                          ),
                          ColorBox(
                            colorName: state.currentOption.colorNames[1],
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor(
                                    state.currentOption.colorNames[1],
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ColorBox(
                            colorName: state.currentOption.colorNames[2],
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor(
                                    state.currentOption.colorNames[2],
                                  ),
                                ),
                          ),
                          ColorBox(
                            colorName: state.currentOption.colorNames[3],
                            onTap:
                                () => context.read<ColorGameBloc>().add(
                                  ChooseColor(
                                    state.currentOption.colorNames[3],
                                  ),
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
