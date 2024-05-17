import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/ans_btn.dart';
import 'package:quiz_app/data/ques_set.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelectAnswer, {super.key});

  final void Function(String ans) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QustionsState();
  }
}

class _QustionsState extends State<Questions> {
  var curQuesIndex = 0;

  void answerQues(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      curQuesIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[curQuesIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.ques,
              style: GoogleFonts.kdamThmorPro(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnsBtn(
                  answer,
                  () {
                    answerQues(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
