import 'package:flutter/material.dart';

class WarningText extends StatelessWidget {
  String message;
  WarningText({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.91,
      child:Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Icon(
        size: 16,
        Icons.warning_rounded,
        color: Color(0xffCD5B52),
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        message,
        style: const TextStyle(color: Color(0xffCD5B52), fontSize: 12),
      )
    ]));
  }
}
