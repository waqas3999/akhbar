import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing/landing_widget/tab_widget.dart';
import 'package:akhbar/screen/menu_screen/menu_screen.dart';
import 'package:akhbar/screen/sign_in/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/screen/landing/landing_widget/article_list.dart';
import 'package:akhbar/screen/landing/landing_widget/editors_picks.dart';
import 'package:akhbar/screen/landing/landing_widget/footballmatch_list.dart';
import 'package:akhbar/screen/landing/landing_widget/home_main_t_article.dart';
import 'package:akhbar/screen/landing/landing_widget/news_listarticle.dart';
import 'package:akhbar/screen/landing/landing_widget/vedio_list.dart';
import 'package:akhbar/widget/custom_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
class Landing extends StatefulWidget {
  const Landing({Key? key, }) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing>  with TickerProviderStateMixin {
  late TabController _tabController;
  late TabController _tabController2;

  @override
  void initState() {
    _tabController =  TabController(length: Akhbar.akhbar.length, vsync: this);
    _tabController2 =  TabController(length:Akhbar.bottomtab.length, vsync: this,);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    _tabController2.dispose();
    super.dispose();
  }
  bool _useRtlText = false;
  bool selected_text=false;
  String? colors;
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:
      /*   AppBar(
          backgroundColor: app_Whitecolor,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const SignIn()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "images/uaccount.png", color: app_Whitecolor),
              )),
          leadingWidth: 35,

          title: Image.asset(
            "images/login.PNG", scale: 3,),
          centerTitle: true,
          shadowColor: app_Whitecolor,
          toolbarHeight: 60,
          elevation: 10.0,
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MenuScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("images/menuss.PNG", scale: 2,),
                )),

          ],
      )*/
      CustomAppBar(leading_icon: "images/uaccount.png",onleadingClick: (){ Navigator.push(
          context, MaterialPageRoute(builder: (_) => SignIn()));},center_icon: "images/login.PNG",trailing_icon: "images/menu_left.png",ontrailingClick:(){
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => MenuScreen()));

      },traling_iconcolor: 0xFF000000, bg_color: 0xFFFFFFFF,leading_iconcolor: 0xFF000000 ,),
      body:Column(
        children: [
          Container(
        height: 40,
        decoration: BoxDecoration(

            border: Border(
              top: BorderSide(width: 0.5, color: app_menu_textcolor),
              bottom: BorderSide(width: 0.5, color: app_menu_textcolor),
            )
        ),
            child:TabBar(
              controller: _tabController,
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              unselectedLabelColor: tab_unselectedcolor,
              labelColor: tab_textcolor,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: tab_textcolor,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3,color: app_Bluecolor), //hight of indicator
                insets: EdgeInsets.symmetric(horizontal: 12.0,), //give some padding to reduce the size of indicator
              ),
              tabs:[
                for(final tab in Akhbar.akhbar.reversed)
                  TabWidget(title: tab, isSeperator: true),
              ],
              labelStyle:  TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14,),
              unselectedLabelStyle:  TextStyle(
                  fontStyle: FontStyle.normal, fontSize: 14,),
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
             children: [
               for(final tab in Akhbar.akhbar)
                 SingleChildScrollView(
                   child: Padding(
                       padding:  EdgeInsets.only(left: 15, right: 15),
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
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Expanded(
                           child: Marquee(
                             scrollAxis: Axis.horizontal,
                             blankSpace: 20,
                             velocity: 40,
                             accelerationCurve: Curves.linear,
                             decelerationDuration: Duration(milliseconds: 800),
                             decelerationCurve: Curves.easeOut,
                    /*This will first bakcward  for 0.1 sec and then move forworad */
                         //      text:  'رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان',style: home_heading2,textDirection: TextDirection.rtl,

                              text: !_useRtlText ? 'رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان':'رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان',style: home_heading2,textDirection: TextDirection.rtl,
                           )


                                 ),
                               const SizedBox(width: 20,),
                               Text("| خبر عجل",style: listtile_text,textAlign: TextAlign.right,),
                               const SizedBox(width: 20,),
                             ],
                           )    ),
                       const SizedBox(height: 15,),
                            TotalNews_Article(),
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
                     SizedBox(width: MediaQuery.of(context).size.width,
                       height: 50,
                       child: Column(
                           children:[ Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Text("13", style: message_text,),
                               const SizedBox(width: 5,),
                               GestureDetector(
                                 onTap: (){},
                                 child: Icon(Icons.messenger, size: 16,
                                   color: app_menu_textcolor,),
                               ),
                               const SizedBox(width: 25,),
                               Text("2,986", style: message_text,),
                               const SizedBox(width: 5,),
                               GestureDetector(
                                 onTap: (){},
                                 child: SizedBox(
                                     width: 18,
                                     height: 18,
                                     child: Image.asset("images/glasses.png",
                                       color: app_menu_textcolor,)),
                               ),
                               const SizedBox(width: 20,),
                               Text("مون ساعات", style: message_text,),
                               const SizedBox(width: 3,),
                               SizedBox(width: 8, height: 8, child: Image.asset(
                                 "images/clock.png", color: app_menu_textcolor,)),
                               SizedBox(width: 10,),
                               Image.asset("images/24h.PNG", scale:1.1,),

                             ],
                           ),

                            const SizedBox(height: 5,),
                            Divider(
                                 height: 0.5,
                                 color: app_menu_textcolor,
                                indent: 22,

                             )
                           ]
                       ),
                     ),


                           ],
                 )
             ],

             options: CarouselOptions(
                 viewportFraction: 0.9,
                //aspectRatio: 2.0,
               //  initialPage: 2,
                 height:350
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
                             Text("الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة",style: home_heading2,textAlign: TextAlign.right,),
                           const VedioList(text: 'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة', vedio: 'images/vedio.PNG',),
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
          ),
        ],
      ),
        bottomNavigationBar:
        BottomAppBar(
           child: TabBar(
            /*onTap: (int){setState((){selected_text=true;})*/
             controller: _tabController2,
            unselectedLabelColor: tab_unselectedcolor,
            labelColor:/*selected_text ? app_Blackcolor:*/app_Bluecolor,
            indicatorSize: TabBarIndicatorSize.label,
             indicatorColor: Colors.black,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2,color: app_Bluecolor),
              //hight of indicator
              insets: EdgeInsets.symmetric(horizontal: 4.0,vertical: 10),
              //give some padding to reduce the size of indicator
             ),
            tabs:[
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0),
                icon:ImageIcon(AssetImage("images/more.png"),size:22),
              child: Text("المزيد",style: TextStyle(color:app_Blackcolor))),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0),
                icon: ImageIcon(AssetImage("images/ghar2.png",),size:22),
                child:Text( 'دوليات',style: TextStyle(color: app_Blackcolor),),
              ),
              Tab(
                  iconMargin: EdgeInsets.only(bottom: 0),
                icon:   ImageIcon(AssetImage("images/football.png"),size:22),
                child:Text( 'رياضة', style:TextStyle(color:app_Blackcolor, )),
                           /* Hardcorded my text */
              ),
              Tab(iconMargin: EdgeInsets.only(bottom: 0),
                icon:   ImageIcon(AssetImage("images/ss.png"),size:22),
                text: 'الرئيسية',/*default tab text*/

              ),
            ],labelStyle:  TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16),
            unselectedLabelStyle:  TextStyle(
                fontStyle: FontStyle.normal, fontSize: 14),
                 ),

        ),
/* BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("images/more.png"),size:24,color:app_menu_textcolor,),
              label: 'المزيد',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/ghar2.png"),color: app_menu_textcolor),
              label: 'دوليات',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/football.png"),color: app_menu_textcolor),
              label: 'رياضة',
              ),

            BottomNavigationBarItem(
                icon:   ImageIcon(AssetImage("images/ss.png"),color: app_menu_textcolor),
                label: 'الرئيسية',

            ),
          ],
          backgroundColor: botttombar_color,
          selectedItemColor: app_Bluecolor,
          unselectedItemColor: app_menu_textcolor,
          iconSize: 18,
          selectedFontSize: 14,
          selectedLabelStyle: selected_tabStyle,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,

        ),*/ /*bottom navigation bar without tabar*/

/*
    SizedBox(

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

                IconButton(onPressed:(){  Navigator.push(context, MaterialPageRoute(builder: (_)=> Searching()));},icon:ImageIcon(AssetImage("images/more.png"),size:24,color: app_menu_textcolor,)),
                IconButton(onPressed:(){},icon:ImageIcon(AssetImage("images/ghar2.png"),size: 24,color: app_menu_textcolor)),
                IconButton(onPressed:(){},icon:ImageIcon(AssetImage("images/football.png"),size: 24,color: app_menu_textcolor)),
                IconButton(onPressed:(){     Navigator.push(context,MaterialPageRoute(builder: (_)=>const Landing()));},icon:ImageIcon(AssetImage("images/ghar.png"),size: 24,color: app_menu_textcolor)),


              ],
            ),
    )*/ );
    }
}
