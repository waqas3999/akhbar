import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/btn_menu.dart';
import 'package:akhbar/widget/listfield.dart';
import 'package:akhbar/widget/side_menu_list.dart';
import 'package:akhbar/widget/side_menu_list.dart';
import 'package:akhbar/widget/side_menu_list.dart';
import 'package:akhbar/widget/sport24.dart';
import 'package:flutter/material.dart';
class Combine_Buttton extends StatefulWidget {

  const Combine_Buttton({Key? key}) : super(key: key);

  @override
  State<Combine_Buttton> createState() => _Combine_ButttonState();
}

class _Combine_ButttonState extends State<Combine_Buttton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      //width:395,
      child: Row(
        children: [
        Expanded(
          child: GestureDetector(
      onTap: (){
        Navigator.push<Sport24>(context,MaterialPageRoute(builder: (_)=> MenuScreen()));
    },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(5),bottomLeft:Radius.circular(5)),
                color: app_Bluecolor,
              ),
               // color: app_Bluecolor,
                child: Button_Menu(label: "سبورت",
                  buttoncolor:0xFF234EC4, textColor: 0xFFFFFFFF,imcon: "images/24b.PNG",/*iconcolor: 0xFFFFFFFF,*/)),
          ),
        ),
      Expanded(
        child: GestureDetector(
          onTap: (){
            Navigator.push<SideMenuList>(context,MaterialPageRoute(builder: (_)=> MenuScreen()));
            },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight:Radius.circular(5),bottomRight:Radius.circular(5)),
              color: app_redcolor
            ),
              //color: app_redcolor,
              child:    Button_Menu(label: "أخبار",buttoncolor:0xFFD62B47, textColor: 0xFFFFFFFF,imcon: "images/24c.PNG",/*iconcolor: 0xFFD62B47,*/)),
        ),
      )
          ]),
    );
  }
}
