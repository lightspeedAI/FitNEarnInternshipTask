import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  String words;
  NormalText({super.key, required this.words});

  @override
  Widget build(BuildContext context) {
    return Text(
      words,
      style: const TextStyle(
        color: Color(0xffE5E5E5),
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
