import 'package:flutter/material.dart';

class ColorTile extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;

  const ColorTile({required this.color, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(color: color, child: const SizedBox.expand()),
      ),
    );
  }
}
