import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(50);
 GestureTapCallback? onleadingClick;
  String? leading_icon;
  String? center_icon;
  String? trailing_icon;
  GestureTapCallback? ontrailingClick;
 int? traling_iconcolor;
  final int bg_color;
 final int leading_iconcolor;

  CustomAppBar({this.leading_icon, this.center_icon, this.trailing_icon,this.onleadingClick,this.ontrailingClick, required this.bg_color,required this.leading_iconcolor,this.traling_iconcolor})  ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Color(bg_color),
      leading: /*GestureDetector(
          onTap: onleadingClick,
          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: SizedBox(
                height: 5,
                child: Image.asset(leading_icon?.toString() ?? "",color:leading_iconcolor==null ? null:Color(leading_iconcolor!.toInt()),)),
          ))*/
      IconButton(onPressed: onleadingClick, icon:ImageIcon(AssetImage(leading_icon?.toString()?? ""),size: 22,color:Color(leading_iconcolor) ,),),


      title: SizedBox(
        width: MediaQuery.of(context).size.width,
          height: 50,
          child: Image.asset(center_icon?.toString() ?? "",scale: 1,)),
     // IconButton(onPressed: (){}, icon:ImageIcon(AssetImage(center_icon?.toString()?? "")),),

      centerTitle: true,
      //shadowColor: app_Whitecolor,
      toolbarHeight: 75,
      elevation: 0.0,
      actions: <Widget>[
       /* GestureDetector(
            onTap: ontrailingClick,
            child: Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                  width: 22,
                  height: 22,
                  child: trailing_icon == null  ? Container() :
                  Image.asset(trailing_icon?.toString() ?? "",
                    color:(trailing_icon==null) ? null:Color(traling_iconcolor!.toInt()),),)
            ))*/      IconButton(onPressed: ontrailingClick,icon: trailing_icon == null  ? Container() : ImageIcon(AssetImage(trailing_icon?.toString()?? ""),size: 22,color:(traling_iconcolor==null) ? null:Color(traling_iconcolor!.toInt()),),),
      ],
    );
  }
}