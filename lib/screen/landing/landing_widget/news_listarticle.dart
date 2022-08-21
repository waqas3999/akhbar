import 'package:akhbar/screen/landing/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class Newslist extends StatelessWidget {
  final String title;
  final String new_images;
  const Newslist({Key? key, required this.title, required this.new_images,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  const Landing()));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 10,top: 10),
        decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5,color: app_menu_textcolor))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text(title,style:heading1,textAlign: TextAlign.right),
            const SizedBox(width: 15,),
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                 color: app_Bluecolor,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(new_images.toString()),
                    fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
