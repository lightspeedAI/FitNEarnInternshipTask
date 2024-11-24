import 'package:fitnearn_test_project/widgets/small_camera.dart';
import 'package:flutter/material.dart';

class ProfileImageSelector extends StatefulWidget {
  const ProfileImageSelector({super.key});

  @override
  State<ProfileImageSelector> createState() => _ProfileImageSelectorState();
}

class _ProfileImageSelectorState extends State<ProfileImageSelector> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      height: 66,
      width: 66,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        image: DecorationImage(
            image: AssetImage('assets/images/profilePlace.jpg'),
            fit: BoxFit.cover),
      ),
      child: Align(alignment: Alignment.bottomRight, child: SmallCamera(marginAmount: 0,)),
    ));
  }
}
