import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var activeDice = 2;

  void rolldice() {
    setState(() {
      activeDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDice.png',
          width: 200,
        ),
        const SizedBox(height: 20), // padding alternative
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 30),
              foregroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
