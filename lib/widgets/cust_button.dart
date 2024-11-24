import 'package:fitnearn_test_project/constants/styles.dart';
import 'package:flutter/material.dart';

class CustButton extends StatelessWidget {
  final String innerText;
  final VoidCallback onTP; 
  const CustButton({
    super.key,
    required this.innerText,
    required this.onTP,    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTP.call();
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.91,
        height: 48,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                buttonBgColor1,
                buttonBgColor2,
              ],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Center(
            child: Text(
          innerText,
          style: buttonFont,
        )),
      ),
    );
  }
}
