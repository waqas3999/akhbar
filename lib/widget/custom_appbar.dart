import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(60);
  String? leading_icon;
  String? center_icon;
  String? trailing_icon;

  CustomAppBar(
      {Key? key, this.leading_icon, this.center_icon, this.trailing_icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: app_menuscreen_color,
      leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SignIn()));
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              leading_icon?.toString() ?? "", color: app_Whitecolor,),
          )),
      leadingWidth: 35,

      title: Image.asset(center_icon?.toString() ?? "", scale: 3,),
      centerTitle: true,
      shadowColor: app_Whitecolor,
      toolbarHeight: 64,
      elevation: 0.0,
      actions: <Widget>[
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Landing()));
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(trailing_icon?.toString() ?? "", scale: 20,color: app_Whitecolor,),
            )),

      ],

    );
  }

}