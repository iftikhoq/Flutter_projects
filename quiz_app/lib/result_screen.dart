import 'package:flutter/material.dart';
import 'package:quiz_app/data/ques_set.dart';
import 'package:quiz_app/model/ques_temp.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.ans, {super.key});

  final List<String> ans;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < ans.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].ques,
        'correct-ans': questions[i].ans[0],
        'user-ans': ans[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQues = questions.length;
    final correctAns = summaryData.where((data) {
      return data['user-ans'] == data['correct-ans'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('You have ansered $correctAns out of $totalQues questions correctly.'),
            const SizedBox(height: 5),
            QuestionTemplate(summaryData),
            const SizedBox(height: 5),
            TextButton(onPressed: () {}, child: const Text('Restart quiz'))
          ],
        ),
      ),
    );
  }
}
