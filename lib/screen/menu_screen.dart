import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/combine_button.dart';
import 'package:akhbar/widget/custom_appbar.dart';
import 'package:akhbar/widget/list_sep.dart';
import 'package:akhbar/widget/listfield.dart';
import 'package:akhbar/widget/menu_txtfield.dart';
import 'package:akhbar/widget/round_button.dart';
import 'package:akhbar/widget/side_menu_list.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: app_menuscreen_color,
      appBar:/*AppBar(
        backgroundColor: app_menuscreen_color,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignIn()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/uaccount.png",color: app_Whitecolor,),
            )),
        leadingWidth: 35,

        title:    Image.asset("images/logo.PNG",scale: 3,),
        centerTitle: true,
        shadowColor: app_Whitecolor,
        toolbarHeight: 64,
        elevation: 0.0,
        actions:<Widget> [
          GestureDetector(
          onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (_)=> Landing()));
    },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.close,size: 35,color:app_Whitecolor,),
        )),

          ],

      )*/CustomAppBar(leading_icon: "images/uaccount.png",center_icon: "images/logo.PNG",trailing_icon: "images/close.png",),
      body:Padding(
        padding:  EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            const Menu_textField(),
         const SizedBox(height: 20,),
         const Combine_Buttton(),
    const SizedBox(height: 10,),
          /*  const SideMenuList(),*/
            List_Seperator(litems: Akhbar.sport),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                color: app_menuscreen_color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Round_Button(onPress: () {  },imcon: "images/ficon.png",iconcolor:0xFF8E929E,),
                 /*SizedBox(width: 15,),*/
                 Round_Button(onPress: () {  },imcon: "images/instagram.png",iconcolor:0xFF8E929E,),
                 /*SizedBox(width: 15,),*/
                 Round_Button(onPress: () {  },imcon: "images/youtube.png",iconcolor:0xFF8E929E,),
                /* SizedBox(width: 15,),*/
                 Round_Button(onPress: () {  },imcon: "images/twitter.png",iconcolor:0xFF8E929E,),
                /* SizedBox(width: 15,),*/
                 Round_Button(onPress: () {  },imcon: "images/linkedin.png",iconcolor:0xFF8E929E,),
                /* SizedBox(width: 15,),*/
                 Round_Button(onPress: () {  },imcon: "images/telegram.png",iconcolor:0xFF8E929E,)
              ]),
            ),
            const SizedBox(height: 10,)
      ])
    )
    );
  }
}

