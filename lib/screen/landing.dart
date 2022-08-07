
import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/combine_button.dart';

import 'package:akhbar/widget/round_button.dart';
import 'package:flutter/material.dart';
class Landing extends StatefulWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  String? imageicon;
  int? imageiconcolor;
   Landing({Key? key,this.imageicon,this.imageiconcolor}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: app_Whitecolor,
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("images/uaccount.png",color: app_Blackcolor),
              )),
          leadingWidth: 35,

          title:    Image.asset("images/login.PNG",scale: 3),
          centerTitle: true,
          shadowColor: app_Whitecolor,
          toolbarHeight: 64,
          elevation: 0.0,
          actions:<Widget> [
            IconButton(
              icon: Image.asset("images/menuss.PNG",/*color: app_Blackcolor,*/scale: 1,),
               onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>MenuScreen()));
            },

            ),],

      ),
    body:Column()
    );
  }
}
