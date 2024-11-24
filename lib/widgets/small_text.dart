import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String headText;

  SmallText({super.key,
  required this.headText
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.91,
      child:Text(headText,
    style: const TextStyle(
      color: Color(0xff737373),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    ));
  }
}