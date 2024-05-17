import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Txt extends StatelessWidget {
  const Txt(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kdamThmorPro(
          color: const Color.fromARGB(255, 10, 46, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
    // throw UnimplementedError();
  }
}
