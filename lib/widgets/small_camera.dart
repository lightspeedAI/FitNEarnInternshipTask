import 'package:flutter/material.dart';

class SmallCamera extends StatelessWidget {
  double marginAmount;
  SmallCamera({super.key, required this.marginAmount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(marginAmount),
      decoration: BoxDecoration(
          color: const Color(0xff171717),
          borderRadius: BorderRadius.circular(100)),
      child: const Icon(
        size: 16,
        Icons.camera_alt_outlined,
        color: Colors.red,
      ),
    );
  }
}
