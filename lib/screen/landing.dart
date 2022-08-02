
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/textfield_signin.dart';
import 'package:flutter/material.dart';
class Landing extends StatefulWidget {
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
    body: Column(
      children: [
        SizedBox(height: 60,),
        Row(
          children:[
    GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
                },
                child: Icon(Icons.login_outlined,size: 60,color: Colors.black,)),

    ]),
        SizedBox(height: 70,),

    Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border(
              //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
            top: BorderSide(width: 2, color:app_Grey_textcolor),
             left: BorderSide(width: 2, color: app_Grey_textcolor),
            right: BorderSide(width: 2, color: app_Grey_textcolor),
             bottom: BorderSide(width: 2, color: app_Grey_textcolor),
          )

        ),
        child: Column(
          children: [
            TextField_SignIn(title: "Enter your mail", textColor:0xFF000000),
            Divider(
              height: 2,
              thickness: 2,
              color: app_Grey_textcolor,
            ),
            TextField_SignIn(title: "Enter your paswword", textColor:0xFF000000)],
        ),
      ),
    ),
      SizedBox(height: 60,),
        Row(
          children: [
            SizedBox(width: 10,),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
                },
                child: Icon(Icons.close,size: 60,color: Colors.black,)),
            SizedBox(width: 70,),
            Image.asset("images/akhbar.jpg",scale: 2,)
          ],
        ),



      ],),

    );
  }
}
