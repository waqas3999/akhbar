
import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/btn_menu.dart';
import 'package:akhbar/widget/combine_button.dart';
import 'package:akhbar/widget/combine_textfield.dart';
import 'package:akhbar/widget/tile.dart';
import 'package:akhbar/widget/listfield.dart';
import 'package:akhbar/widget/menu_txtfield.dart';
import 'package:akhbar/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_menuscreen_color,
      appBar:AppBar(
        backgroundColor: app_menuscreen_color,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset("images/uaccount.png",color: app_Whitecolor),
            )),
        leadingWidth: 35,

        title:    Image.asset("images/akhbar.jpg",scale: 3,),
        centerTitle: true,
        shadowColor: app_Whitecolor,
        toolbarHeight: 64,
        elevation: 0.0,
        actions:<Widget> [
          GestureDetector(
          onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
    },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.close,size: 35,color:app_Whitecolor,),
        )),

          ],

      ),
      body:Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Menu_textField(),
            SizedBox(height: 10,),
         Combine_Buttton(),
         SizedBox(height: 20,),
/*         Expanded(
           child: ListView.builder(
             //shrinkWrap: true,
             //scrollDirection: Axis.vertical,
             //padding: EdgeInsets.zero,
               itemCount: Akhbar.akhbar.length,
               itemBuilder: (BuildContext context,int index){
                 return  Material(
                   child: ListTile(
                     title: Container(
                       alignment: Alignment.centerRight,
                         decoration: BoxDecoration(
                           border: Border(bottom: BorderSide(width: 1.0,color: app_menu_textcolor)),
                      ),
                       child: Text(
                         "${Akhbar.akhbar[index]}",style:txtfield_menu,
                         maxLines: 1,
                         textAlign: TextAlign.center,

                       ),
                     ),
                 ));
               }

           ),
         ),*/
            /* Expanded(
              child: ListView.builder(
                itemCount:Akhbar.akhbar.length ,
                itemBuilder: (BuildContext context,int index){
                  return Material(
                    child: ListTile(title: Text("${Akhbar.akhbar[index]}",
                      style:txtfield_menu,
                      textAlign: TextAlign.end,
                    )),
                  );}),
            ),*/
          /*Expanded(
            child: ListView.separated(
              //padding:  EdgeInsets.all(4),
              itemCount: Akhbar.akhbar.length,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  color: app_menuscreen_color,
                  child: ListTile(
                      title: Text("${Akhbar.akhbar[index]}", style:txtfield_menu,
                        textAlign: TextAlign.end),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
                      }
                    ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>  Divider(
                thickness: 1,
                height: 1,
                color:app_menu_textcolor,),),),
            */
            //Listfield(),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: app_menuscreen_color
              ),
              child: Row(
               children: [
                 Round_Button(onPress: () {  },imcon: "images/ficon.png",iconcolor:0xFF8E929E,),
                 SizedBox(width: 15,),
                 Round_Button(onPress: () {  },imcon: "images/instagram.png",iconcolor:0xFF8E929E,),
                 SizedBox(width: 15,),
                 Round_Button(onPress: () {  },imcon: "images/youtube.png",iconcolor:0xFF8E929E,),
                 SizedBox(width: 15,),
                 Round_Button(onPress: () {  },imcon: "images/twitter.png",iconcolor:0xFF8E929E,),
                 SizedBox(width: 15,),
                 Round_Button(onPress: () {  },imcon: "images/linkedin.png",iconcolor:0xFF8E929E,),
                 SizedBox(width: 15,),
                 Round_Button(onPress: () {  },imcon: "images/telegram.png",iconcolor:0xFF8E929E,)
              ]),
            ),
            SizedBox(height: 20,)
      ])
    )
    );
  }
}

