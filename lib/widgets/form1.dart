import 'package:fitnearn_test_project/widgets/cust_button.dart';
import 'package:fitnearn_test_project/widgets/cust_text_input.dart';
import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  final TextEditingController nameCont;
  Form1({
    super.key,
    required this.nameCont,
  });

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
         
          CustTextInput(
              hint: "Enter your name",
              fieldName: "Name",
              backColor: const Color(0xff262626),
              textColor: const Color(0xffE5E5E5),
              textCont: widget.nameCont,
              hintColor: const Color(0xffA3A3A3)),
          
          SizedBox(height: MediaQuery.of(context).size.height*0.13,),

          CustButton(
              innerText: "Continue",
              onTP: () {
                
                if (_formKey.currentState!.validate()) {
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              })
        ],
      ),
    );
  }
}
