import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  VoidCallback handleJawaban;
  String jawabanText;

  Jawaban({
    required this.handleJawaban,
    required this.jawabanText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: handleJawaban, child: Text(jawabanText));
  }
}
