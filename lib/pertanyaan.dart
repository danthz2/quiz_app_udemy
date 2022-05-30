import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  String pertanyaan;
  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      pertanyaan,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.blueGrey),
    ));
  }
}
