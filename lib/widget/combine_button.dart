import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/btn_menu.dart';
import 'package:akhbar/widget/list_sep.dart';
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
    return SizedBox(
      height: 50,
      //width:395,
      child: Row(
        children: [
        Expanded(
          child: GestureDetector(
      onTap: (){
        setState((){
          List_Seperator(litems: Akhbar.akhbar);
        // Navigator.push(context,MaterialPageRoute(builder: (_)=>List_Seperator(litems: Akhbar.sport)));
          });

      },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft:Radius.circular(5),bottomLeft:Radius.circular(5)),
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
            setState((){

              List_Seperator(litems:Akhbar.akhbar);
            // Navigator.push(context,MaterialPageRoute(builder: (_)=> List_Seperator(litems: Akhbar.akhbar)));

            });
         },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight:Radius.circular(5),bottomRight:Radius.circular(5)),
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
