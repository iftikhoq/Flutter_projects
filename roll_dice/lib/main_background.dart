import 'package:flutter/material.dart';
// import 'package:roll_dice/styled_text.dart';
import 'package:roll_dice/roll_dice.dart';

class MainBackground extends StatelessWidget {
  const MainBackground(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
    // throw UnimplementedError();
  }
}
