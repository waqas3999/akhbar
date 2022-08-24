
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/screen/landing/landing_widget/article_bottom_section.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
   String? article;
  String? detail;
   ArticleList({Key? key,  this.article,  this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:[
          Text(article?.toString()?? "", style: home_heading1, textAlign: TextAlign.right,),
    Text(
    detail?.toString() ?? "",
    style: home_heading2, textAlign: TextAlign.right,),
     SizedBox(height: 5,),
   ArtcleBottom_Section()
    ]));
  }
}
