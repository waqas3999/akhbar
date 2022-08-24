import 'package:akhbar/screen/landing/landing.dart';
import 'package:akhbar/screen/sign_in/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class VedioList extends StatelessWidget {
  final String vedio;
  final String text;

  const VedioList({Key? key, required this.vedio, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  const SignIn()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
      children:[
        Container(
            width: MediaQuery.of(context).size.width,
            height: 190,
            decoration: BoxDecoration(
                color: app_Bluecolor,
                image: DecorationImage(
                    image:AssetImage(vedio.toString()),
                    fit: BoxFit.cover
                )
            ),
        ),
        const SizedBox(height: 10,),
        Container(
            width: MediaQuery.of(context).size.width,
            child: Text(text.toString(),style: home_heading2,textAlign: TextAlign.right,)),
        const SizedBox(height: 10,)
      ]),
    );
  }
}
