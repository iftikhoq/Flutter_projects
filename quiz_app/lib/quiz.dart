import 'package:flutter/material.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "main-screen";

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 29, 151, 108),
              Color.fromARGB(255, 109, 196, 132)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
          child: activeScreen == 'main-screen'
              ? MainScreen(switchScreen)
              : const Questions(),
        ),
      ),
    );
  }
}
