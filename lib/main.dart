import 'package:flutter/material.dart';
import 'package:udemy_flutter_widget_exercise/jawaban.dart';
import 'package:udemy_flutter_widget_exercise/kuis.dart';
import 'package:udemy_flutter_widget_exercise/pertanyaan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indexPertanyaan = 0;
  bool _isJawaban = true;

  final List<Map<String, dynamic>> _pertanyaan = [
    {
      'pertanyaan': "Berapa 1 + 1 ?",
      'jawaban': [
        {'jawab': '1', 'status': false},
        {'jawab': '2', 'status': true},
        {'jawab': '3', 'status': false},
        {'jawab': '4', 'status': false},
      ]
    },
    {
      'pertanyaan': "Berapa 2 x 5 ?",
      'jawaban': [
        {'jawab': '10', 'status': true},
        {'jawab': '20', 'status': false},
        {'jawab': '5', 'status': false},
        {'jawab': '7', 'status': false},
      ]
    },
    {
      'pertanyaan': "Berapa 5 - 1 ?",
      'jawaban': [
        {'jawab': '1', 'status': false},
        {'jawab': '2', 'status': false},
        {'jawab': '3', 'status': false},
        {'jawab': '4', 'status': true},
      ]
    },
  ];

  void _handleJawaban(bool status) {
    setState(() {
      print(status);
      if (status == true) {
        _indexPertanyaan++;
        _isJawaban = true;
      } else {
        _isJawaban = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Application"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Kuis(
                pertanyaan: _pertanyaan,
                indexPertanyaan: _indexPertanyaan,
                handleJawaban: _handleJawaban,
                isJawaban: _isJawaban),
          ],
        ),
      ),
    );
  }
}
