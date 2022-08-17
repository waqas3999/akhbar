import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class Searching extends StatelessWidget {
  const Searching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_Whitecolor,
      appBar:AppBar(
          backgroundColor: app_Whitecolor,
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const Landing()));
              },
              child: const Icon(Icons.arrow_back,size: 40,color: Colors.black,)),
          title:    Image.asset("images/login.PNG",scale: 2.5,),
          centerTitle: true,
          shadowColor: app_Whitecolor,
          toolbarHeight: 70,
          elevation: 0.0),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 30,),
            Text("Bhas",style: home_heading2,textAlign: TextAlign.right,),
              const SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
    border: Border(
    //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
    top: BorderSide(width: 1, color:app_Grey_textcolor),
    left: BorderSide(width: 1, color: app_Grey_textcolor),
    right: BorderSide(width: 1, color: app_Grey_textcolor),
    bottom: BorderSide(width: 1, color: app_Grey_textcolor),
    )

    ),
    child:Padding(
        padding: const EdgeInsets.all(18),
        child: Text("Bhas",style: txtfield_menu,textAlign: TextAlign.right,))
    ),
    ]),
      ));
  }
}
