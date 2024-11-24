import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  String headText;

  MainHeader({super.key,
  required this.headText
  });

  @override
  Widget build(BuildContext context) {
    return Text(headText,
    style: const TextStyle(
      color: Color(0xffE5E5E5),
      fontSize: 32,
      fontWeight: FontWeight.w800,
    ),
    );
  }
}