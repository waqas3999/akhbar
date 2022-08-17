import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/article_list.dart';
import 'package:flutter/material.dart';
class TotalNews_Article extends StatelessWidget {
  const TotalNews_Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Landing()));

          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: app_Bluecolor,
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image:AssetImage("images/news.png"),
                  fit: BoxFit.fill
              ),
            ),

          ),
        ),
        const SizedBox(height: 10,),
        ArticleList(article: "صورة المراهق الذي قتل جدته \n ومدرسا و19 تلميذا وجرح 15 في\nتكساسة", detail:"اموس اللاتيني الأصل دخل إلى المدرسة\nبمسدس، وربما ببندقية، وتصدى له أفراد من\nالشرطة بالرصاص فقتلوه.",),

      ],
    );
  }
}
