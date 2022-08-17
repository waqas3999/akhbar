import 'dart:async';
import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/screen/searching.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/article_list.dart';
import 'package:akhbar/widget/editors_picks.dart';
import 'package:akhbar/widget/footballmatch_list.dart';
import 'package:akhbar/widget/home_main_t_article.dart';
import 'package:akhbar/widget/news_listarticle.dart';
import 'package:akhbar/widget/tab_widget.dart';
import 'package:akhbar/widget/vedio_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ticker_text/ticker_text.dart';
class Landing extends StatefulWidget {
  const Landing({Key? key, }) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing> {
  late final TickerTextController _tickerTextController;
  @override
  void initState() {
    _tickerTextController = TickerTextController();

    // start scrolling after 10 seconds
    Timer(
      const Duration(seconds: 5),
          () {
        _tickerTextController.startScroll();
        // print(_tickerTextController.started);
      },
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DefaultTabController(
      length: Akhbar.akhbar.length,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: app_Whitecolor,
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const SignIn()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/uaccount.png", /*color: app_Whitecolor*/),
                )),
            leadingWidth: 35,

            title: Image.asset("images/login.PNG", scale: 3,),
            centerTitle: true,
            shadowColor: app_Whitecolor,
            toolbarHeight: 60,
            elevation: 10.0,
            actions: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const MenuScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("images/menuss.PNG", scale: 2,),
                  )),

            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: DecoratedBox(

                decoration: BoxDecoration(

                    border: Border(
                      top: BorderSide(width: 0.5, color: app_menu_textcolor),
                      bottom: BorderSide(width: 0.5, color: app_menu_textcolor),
                    )
                ),
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 0),
               unselectedLabelColor: tab_unselectedcolor,
                  labelColor: tab_textcolor,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: tab_textcolor,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.5), //hight of indicator
                    insets: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0), //give some padding to reduce the size of indicator
                  ),

                  tabs:[
                    for(final tab in Akhbar.akhbar.reversed)
                      TabWidget(title: tab, isSeperator: true),

                  ],
                  labelStyle: const TextStyle(

                      fontWeight: FontWeight.bold, fontSize: 20,),
                  unselectedLabelStyle: const TextStyle(
                      fontStyle: FontStyle.normal, fontSize: 18),
                ),
              ),
            )
        ),
        body: TabBarView(
          children: [
            for(final tab in Akhbar.akhbar)
              SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      const SizedBox(height: 20,),
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
                          ,child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TickerText(
                                // default values
                                controller: _tickerTextController, // this is optional
                                scrollDirection: Axis.horizontal,
                                speed: 20,
                                startPauseDuration: const Duration(seconds: 10),
                                endPauseDuration: const Duration(seconds: 10),
                                returnDuration: const Duration(milliseconds: 800),
                                primaryCurve: Curves.linear,
                                returnCurve: Curves.easeOut,
                                child: Text("رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان",style: home_heading2,textAlign: TextAlign.right,overflow:TextOverflow.ellipsis,)),
                            ),
                            const SizedBox(width: 20,),
                            Text("| خبر عجل",style: listtile_text,textAlign: TextAlign.right,),
                            const SizedBox(width: 20,),
                          ],
                        )    ),
                    const SizedBox(height: 15,),
                        const TotalNews_Article(),
                    const Newslist(
                        title: "بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",
                        new_images: "images/tank.PNG"),
                    const Newslist(
                        title: "بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",
                        new_images: "images/army.PNG"),
                    const Newslist(
                        title: "بوتين يصطحب الحقيبة\nالنووية الروسية أثناء مراسم\nعزاء في كنيسة",
                        new_images: "images/covid.PNG"),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("أحدث الأخبار", style: home_heading1,),
                        const SizedBox(width: 5,),
                        Image.asset(
                            "images/24h.PNG", scale: 0.7, fit: BoxFit.fill),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    CarouselSlider(
                      // widgets
                        items: [

                        Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width:270,
                            height: 180,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: app_Bluecolor,
                              image:const DecorationImage(
                                image:AssetImage("images/s.jpg"),
                                  fit: BoxFit.fill
                              ))),
                          const SizedBox(height: 5,),
                          Text("اسم القسم", style: red_text,
                            textAlign: TextAlign.right,),
                          //SizedBox(height: 5,),
                          Text(
                            "السعودية تتحدى الغرب وترفض زيادة\nإنتاج النفط السبب والتداعيات؟",
                            style: home_heading2,
                            textAlign: TextAlign.right,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 20,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: twitter_color,
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("غزد", style: twitter_text,),
                                      SizedBox(height: 12,
                                          width: 12,
                                          child: Image.asset("images/twitter.png",
                                            color: app_Whitecolor,)),],
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Text("13", style: message_text),
                                const SizedBox(width: 3,),
                                Icon(Icons.messenger, size: 16,
                                  color: app_menu_textcolor,),
                                const SizedBox(width: 10,),
                                Text("12,986", style: message_text,),
                                const SizedBox(width: 3,),
                                SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset("images/glasses.png",
                                      color: app_menu_textcolor,)),
                                const SizedBox(width: 10,),
                                Text("مون ساعات", style: message_text,),
                                const SizedBox(width: 3,),
                                SizedBox(width: 12, height: 12, child: Image.asset(
                                  "images/clock.png", color: app_menu_textcolor,)),
                                const SizedBox(width: 10,),
                                Image.asset("images/24h.PNG", scale: 1,),
                               ],
                            ),
                          ),

                          Container(
                            height: 0.5,
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
              height:360
          ),

        ),
                        ArticleList(article: "بدء سريان قرار 7 آلاف ريال حدا\nأدنى لراتب أطباء الأسنان\nوالصيادلة للاحتساب في\n نسب التوطين", detail:"رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.\nالمهندس أحمد الراجحي، بالموافقة على تعديل\nوتحديث دليلي التوطين لمهنتي طب الأسنان"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        ArticleList(detail: "بدء سريان قرار 7 آلاف ريال حداأدنى لراتب أطباء\nالأسنان والصيادلة للاحتساب في نسب التوطينسة"),
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("أنشرة الرابعة", style: home_heading1,),
                            const SizedBox(width: 5,),
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
                      */  const VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/vedio.PNG',),
                        const VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/s.jpg',),
                        const VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/p.PNG',),
                        const VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/3.PNG',),
                        const SizedBox(height: 10,),
                        Divider(
                          height: 0.5,
                          color: app_menu_textcolor,
                        ),const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("عرض الكل", style: txtfield_menu,),
                            const Spacer(),
                            Text(" نتائج المباريات", style: home_heading2,),
                          ],
                        ),
                        const SizedBox(height: 10,),


            const FootballMatchList(team1: "الدنمارك", team2:"السويد", teamscore1: 3, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/denmark.png", team_flag2:"images/sweden.png" )
                  ,const SizedBox(height: 20,),
                           const FootballMatchList(team1: "الدنمارك", team2:"السويد", teamscore1: 3, teamscore2: 0, date: "18:30", time: " IVابريل", team_flag1:"images/finland.png", team_flag2:"images/russia.png" ),
      const SizedBox(height: 20,),
      const FootballMatchList(team1: "فرنسا", team2:"المانيا", teamscore1: 0, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/france.png", team_flag2:"images/germany.png" ),
                        const SizedBox(height: 20,),
                        const FootballMatchList(team1: "بولاندا", team2:"أسبانيا", teamscore1: 2, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/poland.png", team_flag2:"images/spain.png" ),
                        const SizedBox(height: 20,),
                        const FootballMatchList(team1: "انجلترا", team2:"كرواتيا", teamscore1: 1, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/england.png", team_flag2:"images/croatia.png" ),
                        const SizedBox(height: 20,),
                        const FootballMatchList(team1: "الدينمارك", team2:"البرتغال", teamscore1: 2, teamscore2: 1, date: "18:30", time: " IVابريل", team_flag1:"images/denmark.png", team_flag2:"images/portugal.png" ),
                       const SizedBox(height: 20,),
                        Divider(
        height: 0.5,
      color: app_menu_textcolor,
    ),

                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("اختيارات المحرر", style: home_heading1),
                            const SizedBox(width: 5,),
                            Image.asset(
                                "images/24h.PNG", scale: 0.7, fit: BoxFit.fill),
                          ],
                        ),
                        const SizedBox(height: 10,),

                        const EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/mobile.PNG"),

                        const EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/covid.PNG"),

                        const EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/army.PNG"),

                        const EditorsPicks(editor_text:'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', editor_pic:"images/kaaba.PNG"),

                        const SizedBox(height: 20,)

                      ],



      ),
    ),
    )],
    ),

          bottomNavigationBar: BottomAppBar(
            color:const Color(0xFFF4F4F4),
            child: SizedBox(

              height: 70,
              child: Row(
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const Searching()));
                  },),
                  IconButton(icon: SizedBox(
                      width: 22,
                      height: 22,
                      child: Image.asset('images/ghar3.png',color: app_menu_textcolor,)), onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>const Landing()));
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
