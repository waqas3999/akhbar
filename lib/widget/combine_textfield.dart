import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/textfield_signin.dart';
import 'package:flutter/material.dart';
class CombineTextField extends StatelessWidget {
  const CombineTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border(
            //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
            top: BorderSide(width: 2, color:app_Grey_textcolor),
            left: BorderSide(width: 2, color: app_Grey_textcolor),
            right: BorderSide(width: 2, color: app_Grey_textcolor),
            bottom: BorderSide(width: 2, color: app_Grey_textcolor),
          )

      ),
      child: Column(
        children: [
          TextField_SignIn(title: "Enter your mail", textColor:0xFF000000),
          Divider(
            height: 2,
            thickness: 2,
            color: app_Grey_textcolor,
          ),
          TextField_SignIn(title: "Enter your paswword", textColor:0xFF000000)],
      ),
    );
  }
}
