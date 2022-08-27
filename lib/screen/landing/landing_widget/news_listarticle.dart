import 'package:akhbar/screen/landing/landing.dart';
import 'package:akhbar/screen/landing/model/news_list.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class Newslist extends StatelessWidget {
  /*final String title;
  final String new_images;
  */
  Newslist({
    Key? key,
    /* required this.title, required this.new_images,*/
  }) : super(key: key);
  final news = Newslist_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: news.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const Landing()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 0.5, color: app_menu_textcolor))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(news[index].title,
                            style: heading1, textAlign: TextAlign.right)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: app_Bluecolor,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(news[index].new_images.toString()),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
