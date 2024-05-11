import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';
class MainBackground extends StatelessWidget {
  const MainBackground({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 124, 226, 29),
            Color.fromARGB(255, 255, 255, 255)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText("It's fun"),
      ),
    );
    // throw UnimplementedError();
  }
  
}
