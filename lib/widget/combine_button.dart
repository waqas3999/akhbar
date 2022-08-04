
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/btn_menu.dart';
import 'package:akhbar/widget/tile.dart';
import 'package:flutter/material.dart';

class Combine_Buttton extends StatelessWidget {
  const Combine_Buttton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width:395,
      decoration: BoxDecoration(
        color: app_redcolor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          /*border: Border(
            //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
            top: BorderSide(width: 2, color:app_Grey_textcolor),
            left: BorderSide(width: 2, color: app_Grey_textcolor),
            right: BorderSide(width: 2, color: app_Grey_textcolor),
            bottom: BorderSide(width: 2, color: app_Grey_textcolor),
          )*/

      ),
      child: Expanded(
        flex: 2,
        child: Row(
          children: [
          Container(
              color: app_Bluecolor,
              child: Button_Menu(label: "سبورت", onPress:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Listfield()));
              }, buttoncolor:0xFF234EC4, textColor: 0xFFFFFFFF,imcon: "images/24.png",iconcolor: 0xFFFFFFFF,)),
        Container(
            color: app_redcolor,
            child:    Button_Menu(label: "أخبار", onPress:(){}, buttoncolor:0xFFD62B47, textColor: 0xFFFFFFFF,imcon: "images/24.png",iconcolor: 0xFFFFFFFF,))
            ]),
      ),
    );
  }
}
