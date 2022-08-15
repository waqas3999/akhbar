import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class Newslist extends StatelessWidget {
  final String title;
  final String new_images;
  const Newslist({Key? key, required this.title, required this.new_images,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 1,color: app_menu_textcolor))
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  Landing()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text(title,style:heading1,textAlign: TextAlign.right,),
            SizedBox(width: 15,),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(new_images.toString()),
                    fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
