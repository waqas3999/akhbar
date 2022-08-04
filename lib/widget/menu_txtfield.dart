import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class Menu_textField extends StatelessWidget {
  const Menu_textField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:app_menu_textcolor, width: 1.5),
        ),
        ///border: UnderlineInputBorder(),
        hintText: "بحث عن",hintStyle:TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: app_menu_textcolor,
        fontStyle: FontStyle.normal,
      ) ,
    /*    prefixIcon: Padding(
          padding:  EdgeInsetsDirectional.all(0.0),
          child: ImageIcon(AssetImage("images/searching.png"))),*/
    
        suffixIcon:/*Icon(Icons.search_rounded)*/ Padding(
              padding:  EdgeInsetsDirectional.all(20),
              child: /*Icon(Icons.search_rounded)*/ImageIcon(AssetImage("images/searching.png"),
                color: app_menu_textcolor)),
        ));
  }
}
