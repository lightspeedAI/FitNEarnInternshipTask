import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  int currentStage;
  int finalStage;
  VoidCallback nextStage;
  ProgressBar({
    super.key,
    required this.currentStage,
    required this.finalStage,
    required this.nextStage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.075,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Step $currentStage of $finalStage",
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffF5F5F5),
                  fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    currentStage == 1 ? null : Navigator.pop(context);
                  },
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        color: currentStage == 1
                            ? const Color(0xff6B7280)
                            : const Color(0xffEB4C60),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      size: 16,
                      Icons.arrow_back,
                      color: currentStage == 1
                          ? const Color(0xffA3A3A3)
                          : const Color(0xffE5E5E5),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  width: 260,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xff262626)),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 10,
                        width: 32.5 * currentStage,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xffD2375B),
                                Color(0xffFF9A6C),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      )),
                ),
                GestureDetector(
                  onTap: (){
                    nextStage.call();
                  },
                  child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      color: const Color(0xffEB4C60),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    size: 16,
                    Icons.double_arrow_rounded,
                    color: Color(0xffE5E5E5),
                  ),
                ),
                ),
                
              ],
            ),
          ],
        ));
  }
}
