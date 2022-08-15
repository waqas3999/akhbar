
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
   String? article;
  String? detail;
   ArticleList({Key? key,  this.article,  this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:[
      SizedBox(height: 10,),
    Text(article?.toString()?? "", style: home_heading1, textAlign: TextAlign.right,),
    SizedBox(height: 10,),
    Text(
    detail?.toString() ?? "",
    style: home_heading2, textAlign: TextAlign.right,),
    SizedBox(height: 10,),
    Container(width: MediaQuery.of(context).size.width,
    height: 50,
    child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    height: 25,
    width: 55,
    decoration: BoxDecoration(
    color: twitter_color,
    borderRadius: BorderRadius.circular(2)
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("غزد", style: twitter_text,),
    SizedBox(width: 3,),
    SizedBox(height: 12,
    width: 12,
    child: Image.asset("images/twitter.png",
    color: app_Whitecolor,)),
    ],
    ),
    ),
    SizedBox(width: 30,),
    Text("13", style: message_text,),
    SizedBox(width: 5,),
    Icon(Icons.messenger, size: 16,
    color: app_menu_textcolor,),
    SizedBox(width: 15,),
    Text("2,986", style: message_text,),
    SizedBox(width: 5,),
    SizedBox(
    width: 28,
    height: 28,
    child: Image.asset("images/glasses.png",
    color: app_menu_textcolor,)),
    SizedBox(width: 15,),
    Text("مون ساعات", style: message_text,),
    SizedBox(width: 3,),
    SizedBox(width: 12, height: 12, child: Image.asset(
    "images/clock.png", color: app_menu_textcolor,)),
    Spacer(),
    Image.asset("images/24h.PNG", scale:1.1,),

    ],
    ),
    ),

    /* Divider(
              thickness: 1,
              height: 1,
              color: app_menu_textcolor,
            ),
            SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",style: heading1,
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/tank.PNG"),
                        fit: BoxFit.contain
                      ),
                    ),
                  ),

                ],
              ),*/
    Divider(
      height: 1,
    color: app_menu_textcolor),

    ]));
  }
}
