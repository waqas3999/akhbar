import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class VedioList extends StatelessWidget {
  final String vedio;
  final String text;

  const VedioList({Key? key, required this.vedio, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
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
      SizedBox(height: 10,),
      Text(text.toString(),style: home_heading2,textAlign: TextAlign.right,),
      SizedBox(height: 10,)
    ]);
  }
}
