import 'package:fitnearn_test_project/widgets/small_camera.dart';
import 'package:flutter/material.dart';

class CoverImageSelector extends StatefulWidget {
  Image? covImg;

  CoverImageSelector({super.key, this.covImg});

  @override
  State<CoverImageSelector> createState() => _CoverImageSelectorState();
}

class _CoverImageSelectorState extends State<CoverImageSelector> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      height: 178,
      width: MediaQuery.of(context).size.width * 0.91,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
            image: AssetImage('assets/images/coachPlace.jpg'),
            fit: BoxFit.cover),
      ),
      child: Align(alignment: Alignment.topRight, child: SmallCamera(marginAmount: 10,)),
    ));
  }
}
