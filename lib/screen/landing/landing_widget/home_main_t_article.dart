import 'package:akhbar/screen/landing/landing_widget/article_bottom_section.dart';
import 'package:akhbar/screen/landing/model/homemain_artocle.dart';
import 'package:akhbar/screen/searching.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class TotalNews_Article extends StatelessWidget {
  TotalNews_Article({Key? key}) : super(key: key);
  final main_article = HomeMainatricle_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: main_article.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Searching()));
              },
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: app_Bluecolor,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(
                            main_article[index].ar_image?.toString() ?? ""),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              main_article[index].article?.toString() ?? "",
                              style: home_heading1,
                              textAlign: TextAlign.right,
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                              main_article[index].detail?.toString() ?? "",
                              style: home_heading2,
                              textAlign: TextAlign.right),
                        ),
                      ]),
                  //   SizedBox(height: 5),
//          ArticleList(article: "صورة المراهق الذي قتل جدته ومدرسا و19 تلميذا وجرح 15 فتكساسة", detail:"اموس اللاتيني الأصل دخل إلى المدرسة\nبمسدس، وربما ببندقية، وتصدى له أفراد من\nالشرطة بالرصاص فقتلوه.",),
                ),
                ArtcleBottom_Section(),
                SizedBox(height: 10),
              ]));
        });
  }
}
