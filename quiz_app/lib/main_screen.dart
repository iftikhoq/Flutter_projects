import 'package:flutter/material.dart';
import 'package:quiz_app/txt.dart';

void startQuiz() {}

class MainScreen extends StatelessWidget {
  const MainScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ques.png',
                height: 200, color: Color.fromARGB(136, 0, 0, 0)),
            const SizedBox(height: 20),
            const Txt('Learn flutter in fun way...'),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.limeAccent,
                side: const BorderSide(width: 2, color: Colors.lime),
              ),
              label: const Text(
                'Start quiz',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              icon: const Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      );
  }
}
