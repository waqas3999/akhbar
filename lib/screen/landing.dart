import 'dart:async';

import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/screen/searching.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/article_list.dart';
import 'package:akhbar/widget/editors_picks.dart';
import 'package:akhbar/widget/footballmatch_list.dart';
import 'package:akhbar/widget/news_listarticle.dart';
import 'package:akhbar/widget/vedio_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ticker_text/ticker_text.dart';
class Landing extends StatefulWidget {
  String? imageicon;
  int? imageiconcolor;

  Landing({Key? key, this.imageicon, this.imageiconcolor}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final children = <Widget>[];
  late final TickerTextController _tickerTextController;
  @override
  void initState() {
    _tickerTextController = TickerTextController();

    // start scrolling after 10 seconds
    Timer(
      const Duration(seconds: 10),
          () {
        _tickerTextController.startScroll();
        // print(_tickerTextController.started);
      },
    );

    super.initState();
  }
  Widget build(BuildContext context) {
    return MaterialApp(home: DefaultTabController(
      length: Akhbar.akhbar.length,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: app_Whitecolor,
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/uaccount.png", /*color: app_Whitecolor*/),
                )),
            leadingWidth: 35,

            title: Image.asset("images/login.PNG", scale: 3,),
            centerTitle: true,
            shadowColor: app_Whitecolor,
            toolbarHeight: 60,
            elevation: 0.0,
            actions: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MenuScreen()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset("images/menuss.PNG", scale: 2,),
                  )),

            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: DecoratedBox(

                decoration: BoxDecoration(

                    border: Border(
                      top: BorderSide(width: 0.5, color: app_menu_textcolor),
                      left: BorderSide(width: 0.5, color: app_menu_textcolor),
                      right: BorderSide(width: 0.5, color: app_menu_textcolor),
                      bottom: BorderSide(width: 0.5, color: app_menu_textcolor),

                    )
                ),
                child: TabBar(
                  unselectedLabelColor: tab_unselectedcolor,
                  /*  dragStartBehavior: DragStartBehavior.down,
                  physics: BouncingScrollPhysics(),*/
                  labelColor: tab_textcolor,
                  indicatorWeight: 10,
                  isScrollable: true,
                  indicatorColor: tab_textcolor,
                  // indicator: BoxDecoration(
                  //   //shape: BoxShape.rectangle,
                  // /*border: Border(
                  // left: BorderSide(width: 1, color: app_menu_textcolor),
                  // right: BorderSide(width: 1, color: app_menu_textcolor),
                  // )*/
                  // ),
                  indicator: UnderlineTabIndicator(

                      borderSide: BorderSide(

                        width: 4,
                        color: Color(0xFF646464),
                      )),
                  tabs: [
                    for(final tab in Akhbar.akhbar)
                      Tab(text: tab,),
                    /*  Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  */
                  ],
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                  unselectedLabelStyle: TextStyle(
                      fontStyle: FontStyle.normal, fontSize: 18),
                ),
              ),
            )
        ),
        body: TabBarView(
          children: [

            /* Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),*/
            for(final tab in Akhbar.akhbar)
              SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          color: app_redcolor,
                          borderRadius: BorderRadius.circular(10)
                      )// constrain the parent width so the child overflows and scrolling takes effect
                      ,child: TickerText(
                        // default values
                        controller: _tickerTextController, // this is optional
                        scrollDirection: Axis.horizontal,
                        speed: 20,
                        startPauseDuration: const Duration(seconds: 10),
                        endPauseDuration: const Duration(seconds: 10),
                        returnDuration: const Duration(milliseconds: 800),
                        primaryCurve: Curves.linear,
                        returnCurve: Curves.easeOut,
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان",style: home_heading2,textAlign: TextAlign.right,),
                            Text("خبر عجل",style: txtfield_menu,textAlign: TextAlign.right,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        child: Column(
                            children: [ Row(
                              //  crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Image.asset(
                                  "images/w.PNG", fit: BoxFit.fill,),),
                                Expanded(child: Image.asset(
                                  "images/bo.PNG", fit: BoxFit.fill,)),
                                Expanded(child: Image.asset(
                                  "images/girl.PNG", fit: BoxFit.fill,))
                              ],
                            ),
                              Row(
                                //      crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Image.asset(
                                    "images/w2.PNG", fit: BoxFit.fill,),),
                                  Expanded(child: Image.asset(
                                    "images/boy2.PNG", fit: BoxFit.fill,)),
                                  Expanded(child: Image.asset(
                                    "images/girl2.PNG", fit: BoxFit.fill,))
                                ],
                              )
                            ])),
                    /* Container(
                height: 120,
                child: FittedBox(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.fitWidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/w2.PNG",scale: 0.7,fit: BoxFit.contain),
                      Image.asset("images/boy2.PNG",scale: 0.7,fit: BoxFit.contain),
                      Image.asset("images/girl2.PNG",scale: 0.7,fit: BoxFit.contain),],
                  ),
                )),*/
            /*        SizedBox(height: 10,),
                    Text(
                      "صورة المراهق الذي قتل جدته \n ومدرسا و19 تلميذا وجرح 15 في\nتكساسة",
                      style: home_heading1, textAlign: TextAlign.right,),
                    SizedBox(height: 10,),
                    Text(
                      "اموس اللاتيني الأصل دخل إلى المدرسة\nبمسدس، وربما ببندقية، وتصدى له أفراد من\nالشرطة بالرصاص فقتلوه.",
                      style: home_heading2, textAlign: TextAlign.right,),
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
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

                    *//* Divider(
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
              ),*//*
                    Divider(
                      thickness: 1,
                      color: app_menu_textcolor,
                    ),*/
                        SizedBox(height: 10,),
                        ArticleList(article: "صورة المراهق الذي قتل جدته \n ومدرسا و19 تلميذا وجرح 15 في\nتكساسة", detail:"اموس اللاتيني الأصل دخل إلى المدرسة\nبمسدس، وربما ببندقية، وتصدى له أفراد من\nالشرطة بالرصاص فقتلوه.",),

                        // SizedBox(height: 5,),
                    Newslist(
                        title: "بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",
                        new_images: "images/tank.PNG"),
                    //  SizedBox(height: 5,),
                    Newslist(
                        title: "بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",
                        new_images: "images/tank.PNG"),
                    //SizedBox(height: 5,),
                    Newslist(
                        title: "بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",
                        new_images: "images/tank.PNG"),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("أحدث الأخبار", style: home_heading1,),
                        SizedBox(width: 5,),
                        Image.asset(
                            "images/24h.PNG", scale: 0.7, fit: BoxFit.fill),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CarouselSlider(
                      // widgets
                        items: [

                        Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width:290,
                            height: 170,
                            decoration:BoxDecoration(
                              color: app_Bluecolor,
                              image:DecorationImage(
                                image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGcK2uSCYKZZXjk1lXL3xHFytB0jZj-RoGeQ&usqp=CAU",),
                                  fit: BoxFit.fill
                              ))),
                          SizedBox(height: 5,),
                          Text("اسم القسم", style: red_text,
                            textAlign: TextAlign.right,),
                          //SizedBox(height: 5,),
                          Text(
                            "السعودية تتحدى الغرب وترفض زيادة\nإنتاج النفط السبب والتداعيات؟",
                            style: home_heading2,
                            textAlign: TextAlign.right,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 20,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: twitter_color,
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("غزد", style: twitter_text,),
                                      SizedBox(width: 2,),
                                      SizedBox(height: 12,
                                          width: 12,
                                          child: Image.asset("images/twitter.png",
                                            color: app_Whitecolor,)),],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("13", style: message_text),
                                SizedBox(width: 3,),
                                Icon(Icons.messenger, size: 16,
                                  color: app_menu_textcolor,),
                                SizedBox(width: 10,),
                                Text("12,986", style: message_text,),
                                SizedBox(width: 3,),
                                SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset("images/glasses.png",
                                      color: app_menu_textcolor,)),
                                SizedBox(width: 10,),
                                Text("مون ساعات", style: message_text,),
                                SizedBox(width: 3,),
                                SizedBox(width: 12, height: 12, child: Image.asset(
                                  "images/clock.png", color: app_menu_textcolor,)),
                                SizedBox(width: 10,),
                                Image.asset("images/24h.PNG", scale: 1,),
                               ],
                            ),
                          ),

                         /* Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 50,
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [

                                  Container(
                                    height: 25,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: twitter_color,
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Text("غزد", style: twitter_text,),
                                        SizedBox(width: 3,),
                                        SizedBox(
                                            height: 12,
                                            width: 12,
                                            child: Image.asset(
                                              "images/twitter.png",
                                              color: app_Whitecolor,))
                                      ],
                                    ),

                                  ),
                                  //   SizedBox(width: 30,),
                                  Container(
                                    height: 25,
                                    width: 55,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Text("13", style: message_text,),
                                        SizedBox(width: 5,),
                                        Icon(Icons.message, size: 16,
                                          color: app_menu_textcolor,)
                                      ],
                                    ),


                                  ),
                                  //     SizedBox(width: 30,),
                                  Container(
                                    height: 25,
                                    width: 70,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Text("2,986", style: message_text,),
                                        SizedBox(width: 5,),
                                        Image.asset("images/glasses.png",
                                          color: app_menu_textcolor,)
                                      ],
                                    ),


                                  ),
                                  //   SizedBox(width: 30,),
                                  Container(
                                    height: 35,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        // SizedBox(width: 10,),
                                        Text("مون ساعات", style: message_text,),
                                        // SizedBox(width: 2,),
                                        SizedBox(
                                            width: 12,
                                            height: 12,
                                            child: Image.asset(
                                              "images/clock.png",
                                              color: app_menu_textcolor,)),
                                        Spacer(),
                                        Image.asset(
                                          "images/24h.PNG", scale: 0.8,)
                                      ],
                                    ),


                                  ),

                                ],
                              ),
                            ),

                          ),*/
                          Container(
                            height: 1,
                            width: 290,
                            color: app_menu_textcolor,
                          ),


                        ],
              )
          ],

          options: CarouselOptions(
              viewportFraction: 0.9,
             //aspectRatio: 2.0,
            //  initialPage: 2,
              height:340
          ),

        ),
                        ArticleList(article: "بدء سريان قرار 7 آلاف ريال حدا\nأدنى لراتب أطباء الأسنان\nوالصيادلة للاحتساب في\n نسب التوطين", detail:"رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.\nالمهندس أحمد الراجحي، بالموافقة على تعديل\nوتحديث دليلي التوطين لمهنتي طب الأسنان"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("أنشرة الرابعة", style: home_heading1,),
                            SizedBox(width: 5,),
                            Image.asset(
                                "images/24h.PNG", scale: 0.7, fit: BoxFit.fill),
                          ],
                        ),
                      /*  SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: app_Bluecolor,
                            image: DecorationImage(
                              image:AssetImage("images/vedio.PNG"),
                              fit: BoxFit.cover
                            )
                          )
                        ),
                        SizedBox(height: 10,),
                          Text("الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة",style: home_heading2,textAlign: TextAlign.right,),
                      */  VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/vedio.PNG',),
                        VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/s.jpg',),
                        VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/p.PNG',),
                        VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/3.PNG',),
                        SizedBox(height: 10,),
                        Divider(
                          height: 1,
                          color: app_menu_textcolor,
                        ),SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("عرض الكل", style: txtfield_menu,),
                            Spacer(),
                            Text(" نتائج المباريات", style: home_heading2,),
                          ],
                        ),
                        SizedBox(height: 10,),

     /* ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Expanded(
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:botttombar_color),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("الدنمارك",style:matchlist_text,),
                  //    SizedBox(width: 5,)                     ,
                  Text("3",style:goal_blue_style),
                  Image.asset("images/denmark.png",scale: 12,),
                  /// SizedBox(width: 5,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("18:30",style: txtfield_menu,),
                        SizedBox(height: 5,),
                        Text(" IVابريل",style: textfield_style,)
                      ]),
                  //  SizedBox(width: 5,),
                  Image.asset("images/sweden.png",scale: 12,),
                  //   SizedBox(width: 5,),
                  Text("1",style:goal_red_style,),
                  Text("السويد",style:matchlist_text,),

                ],
              ),
            ),
          );
        },

      ),*/
            FootballMatchList(team1: "الدنمارك", team2:"السويد", teamscore1: 3, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/denmark.png", team_flag2:"images/sweden.png" )
                  ,SizedBox(height: 20,),
                           FootballMatchList(team1: "الدنمارك", team2:"السويد", teamscore1: 3, teamscore2: 0, date: "18:30", time: " IVابريل", team_flag1:"images/finland.png", team_flag2:"images/russia.png" ),
      SizedBox(height: 20,),
      FootballMatchList(team1: "فرنسا", team2:"المانيا", teamscore1: 0, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/france.png", team_flag2:"images/germany.png" ),
                        SizedBox(height: 20,),
                        FootballMatchList(team1: "بولاندا", team2:"أسبانيا", teamscore1: 2, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/poland.png", team_flag2:"images/spain.png" ),
                        SizedBox(height: 20,),
                        FootballMatchList(team1: "انجلترا", team2:"كرواتيا", teamscore1: 1, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/england.png", team_flag2:"images/croatia.png" ),
                        SizedBox(height: 20,),
                        FootballMatchList(team1: "الدينمارك", team2:"البرتغال", teamscore1: 2, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/denmark.png", team_flag2:"images/portugal.png" ),
                       SizedBox(height: 20,),
                        Divider(
        height: 1,
      color: app_menu_textcolor,
    ),

                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("اختيارات المحرر", style: home_heading1),
                            SizedBox(width: 5,),
                            Image.asset(
                                "images/24h.PNG", scale: 0.7, fit: BoxFit.fill),
                          ],
                        ),
                        SizedBox(height: 10,),

                        EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/mobile.PNG"),

                        EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/covid.PNG"),

                        EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/army.PNG"),

                        EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/kaaba.PNG"),

                        SizedBox(height: 20,)

                      ],



      ),
    ),
    )],
    ),

          bottomNavigationBar: BottomAppBar(
            color:Color(0xFFF4F4F4),
            child: Container(

              height: 70,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(icon: SizedBox(
                      width: 22,
                      height: 22,
                      child: SizedBox(
                          width: 22,
                          height: 22,
                          child: Image.asset('images/userhome.png',color: app_menu_textcolor,))),onPressed: () {},),
                  IconButton(icon: SizedBox(
                      width:22,
                      height: 22,
                      child: Image.asset('images/bookmark.png',color: app_menu_textcolor)) ,onPressed: () {},),
                  IconButton(icon:SizedBox(
                      width: 22,
                      height: 22,
                      child: Image.asset('images/search.png',color: app_menu_textcolor,)), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Searching()));
                  },),
                  IconButton(icon: SizedBox(
                      width: 22,
                      height: 22,
                      child: Image.asset('images/ghar3.png',color: app_menu_textcolor,)), onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>Landing()));
                  },),

                ],
              ),
            ),
          )
    ),



    ),
    );
    }
}
