import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  const Txt(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.w800));
    // throw UnimplementedError();
  }
}
