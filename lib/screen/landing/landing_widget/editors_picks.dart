
import 'package:akhbar/screen/searching.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class EditorsPicks extends StatelessWidget {
  final String editor_text;
  final String editor_pic;
  const EditorsPicks({Key? key, required this.editor_text, required this.editor_pic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_) =>   Searching()));
      },
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                  color: app_Bluecolor,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image:AssetImage(editor_pic.toString()),
                      fit: BoxFit.cover
                  )
              ),
            ),
            const SizedBox(height: 10,),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text(editor_text.toString(),style: home_heading2,textAlign: TextAlign.right,)),
            const SizedBox(height: 10,)
          ]),
    );
  }
}
