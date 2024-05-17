import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionTemplate extends StatelessWidget {
  const QuestionTemplate(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data['question-index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text((data['question'] as String)),
                        const SizedBox(
                          height: 20,
                        ),
                        Text((data['user-ans'] as String)),
                        Text((data['correct-ans'] as String)),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
