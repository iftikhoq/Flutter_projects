import 'package:flutter/material.dart';

class AnsBtn extends StatelessWidget {
  const AnsBtn(this.ansText, this.onTap, {super.key});

  final String ansText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          backgroundColor: const Color.fromARGB(255, 51, 97, 30),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Text(
        ansText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
