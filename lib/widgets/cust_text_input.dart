import 'package:fitnearn_test_project/constants/regex.dart';
import 'package:fitnearn_test_project/constants/styles.dart';
import 'package:fitnearn_test_project/widgets/warning_text.dart';
import 'package:flutter/material.dart';

class CustTextInput extends StatefulWidget {
  final String hint;
  final String fieldName;
  final Color backColor;
  final Color textColor;
  final Color hintColor;
  final int? lines;
  final TextEditingController textCont;
  final TextInputType? keyType;

  const CustTextInput(
      {super.key,
      required this.hint,
      required this.fieldName,
      required this.backColor,
      required this.textColor,
      required this.textCont,
      required this.hintColor,
      this.keyType,
      this.lines});

  @override
  State<CustTextInput> createState() => _CustTextInputState();
}

class _CustTextInputState extends State<CustTextInput> {
  bool showWarning = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red,
        width: MediaQuery.of(context).size.width * 0.91,
        height: 80,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
            height: 48,
        decoration: BoxDecoration(
            color: widget.backColor,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: TextFormField(
              onChanged: (value) {
                if (value == "") {
                  showWarning = true;
                  setState(() {});
                }else{
                  showWarning = false;
                  setState(() {});
                }
              },
              keyboardType: widget.keyType,
              controller: widget.textCont,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                border: InputBorder.none,
                hintText: widget.hint,
                hintStyle: TextStyle(
                    color: widget.hintColor,
                    fontSize: inputFontSize,
                    fontWeight: inputFontWeight),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffEB4C60), width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: TextStyle(
                  fontSize: inputFontSize,
                  color: widget.textColor,
                  fontWeight: inputFontWeight),
              maxLines: widget.lines ?? 1,
            ),
          ),
          showWarning
              ? WarningText(message: '${widget.fieldName} is required')
              : Container(),
        ]));
  }
}
