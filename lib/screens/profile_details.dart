import 'package:fitnearn_test_project/widgets/cover_image_selector.dart';
import 'package:fitnearn_test_project/widgets/cust_button.dart';
import 'package:fitnearn_test_project/widgets/cust_text_input.dart';
import 'package:fitnearn_test_project/widgets/form1.dart';
import 'package:fitnearn_test_project/widgets/image_selector_combo.dart';
import 'package:fitnearn_test_project/widgets/main_header.dart';
import 'package:fitnearn_test_project/widgets/normal_text.dart';
import 'package:fitnearn_test_project/widgets/profile_image_selector.dart';
import 'package:fitnearn_test_project/widgets/progress_bar.dart';
import 'package:fitnearn_test_project/widgets/small_text.dart';
import 'package:fitnearn_test_project/widgets/warning_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff171717),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20,),
              ProgressBar(currentStage: 1, finalStage: 8, nextStage: (){},),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.91,
                child: MainHeader(headText: "Add Profile Details"),
              ),
              SmallText(
                  headText:
                      "Enter your name and choose an Image so your friend can recognize you"),
              // CoverImageSelector(),
              // ProfileImageSelector(),
              const ImageSelectorCombo(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.91,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NormalText(words: "Name*"),
                  ],
                ),
              ),            

              Form1(nameCont: name),
            ],
          ),
        ),
      ),
    );
  }
}
