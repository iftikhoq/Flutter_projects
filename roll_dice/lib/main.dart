import 'package:flutter/material.dart';
import 'package:roll_dice/main_background.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MainBackground(Color.fromARGB(255, 79, 172, 254),
            Color.fromARGB(255, 0, 241, 254)),
      ),
    ),
  );
}
