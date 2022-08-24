
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class TextField_SignIn extends StatelessWidget {
  final String title;
  final int textColor;
  TextField_SignIn({Key? key,required this.title, required this.textColor}) : super(key: key);
  @override
  final TextEditingController txtxtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.all(5),
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
                child: Text(title,)),
            labelStyle:textfield_style,
            hintText: title,
            hintStyle:  const TextStyle(fontFamily: "Poppins",color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
          )

      ),
    );
  }
}

