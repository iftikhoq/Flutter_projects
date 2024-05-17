import 'package:flutter/material.dart';
import 'package:quiz_app/data/ques_set.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAns = [];
  var activeScreen = "main-screen";

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void choosedAns(String ans) {
    selectedAns.add(ans);
    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = MainScreen(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget = Questions(choosedAns);
    }

    if (activeScreen == "result-screen") {
      screenWidget = ResultScreen(selectedAns);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 172, 206, 194),
              Color.fromARGB(255, 109, 196, 132)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
