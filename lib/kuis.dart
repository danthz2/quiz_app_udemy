import 'package:flutter/material.dart';
import 'package:udemy_flutter_widget_exercise/jawaban.dart';
import 'package:udemy_flutter_widget_exercise/pertanyaan.dart';

class Kuis extends StatelessWidget {
  List<Map<String, dynamic>> pertanyaan;
  int indexPertanyaan;
  bool isJawaban;
  Function handleJawaban;

  Kuis(
      {required this.pertanyaan,
      required this.indexPertanyaan,
      required this.handleJawaban,
      required this.isJawaban});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[indexPertanyaan]['pertanyaan']),
        ...(pertanyaan[indexPertanyaan]['jawaban']
                as List<Map<String, dynamic>>)
            .map((val) => Jawaban(
                handleJawaban: () => handleJawaban(val['status']),
                jawabanText: val['jawab'] as String))
            .toList(),
        isJawaban
            ? SizedBox.shrink()
            : Text(
                "Jawaban ada salah",
                style: TextStyle(color: Colors.red),
              ),
      ],
    );
  }
}
