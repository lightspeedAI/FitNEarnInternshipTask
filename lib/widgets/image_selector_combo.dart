import 'package:fitnearn_test_project/widgets/cover_image_selector.dart';
import 'package:fitnearn_test_project/widgets/profile_image_selector.dart';
import 'package:flutter/material.dart';

class ImageSelectorCombo extends StatefulWidget {
  const ImageSelectorCombo({super.key});

  @override
  State<ImageSelectorCombo> createState() => _ImageSelectorComboState();
}

class _ImageSelectorComboState extends State<ImageSelectorCombo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: CoverImageSelector(),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(32, 140, 0, 0),
          child: ProfileImageSelector(),
        ),
      ],
    );
  }
}
