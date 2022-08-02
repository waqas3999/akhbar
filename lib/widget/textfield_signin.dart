
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class TextField_SignIn extends StatelessWidget {
  final String title;
  final int textColor;
  TextField_SignIn({Key? key,required this.title, required this.textColor}) : super(key: key);
  @override
  final TextEditingController txtxtrl=TextEditingController();
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(5),
      child: TextFormField(
          textAlign: TextAlign.right,
          controller: txtxtrl,
          maxLines: 2,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
           border: InputBorder.none,
            hintMaxLines: 2,
            label:Align(
                alignment: Alignment.centerRight,
                child: Text('تسجيل داخل')),
            labelStyle:textfield_style,
            hintText: title,
            hintStyle:  TextStyle(fontFamily: "Poppins",color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
          )

      ),
    );
  }
}


