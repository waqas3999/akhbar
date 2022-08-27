import 'package:akhbar/screen/landing/landing_widget/article_bottom_section.dart';
import 'package:akhbar/screen/landing/model/article_list_model.dart';
import 'package:akhbar/screen/searching.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  /* String? article;
  String? detail;*/
  ArticleList({
    Key? key,
    /*this.article,  this.detail*/
  }) : super(key: key);
  final article_model = ArticleList_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: article_model.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Searching()));
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            article_model[index].article?.toString() ?? "",
                            style: home_heading1,
                            textAlign: TextAlign.right,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          article_model[index].detail?.toString() ?? "",
                          style: home_heading2,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ArtcleBottom_Section()
                    ])),
          );
        });
  }
}
