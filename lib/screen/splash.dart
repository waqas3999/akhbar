import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
   Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

/*  void initState(){
    super.initState();
    _navigateToLanding();
  }
  _navigateToLanding()async{
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Landing()));
  }*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: Akhbar.akhbar.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: app_Whitecolor,
            leading: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset("images/uaccount.png",color: app_Whitecolor),
                )),
            leadingWidth: 35,

            title:    Image.asset("images/logo.PNG",scale: 3,),
            centerTitle: true,
            shadowColor: app_Whitecolor,
            toolbarHeight: 80,
            elevation: 0.0,
            actions:<Widget> [
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Icon(Icons.close,size: 35,color:app_Whitecolor,),
                  )),

            ],
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: DecoratedBox(
                decoration: BoxDecoration(

                    border: Border(
                        top: BorderSide(width: 1, color:app_menu_textcolor),
                      left: BorderSide(width: 1, color: app_menu_textcolor),
                      right: BorderSide(width: 1, color: app_menu_textcolor),
                      bottom: BorderSide(width: 1, color: app_menu_textcolor),

                    )
                ),
                child: TabBar(
                  unselectedLabelColor: tab_unselectedcolor,
                /*  dragStartBehavior: DragStartBehavior.down,
                  physics: BouncingScrollPhysics(),*/
                  labelColor: tab_textcolor,
                  indicatorWeight: 1,
                  indicatorPadding: EdgeInsets.all(10),
                  isScrollable: true,
                  indicatorColor: tab_textcolor,
                  indicator: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 1, color: app_menu_textcolor),
                      right: BorderSide(width: 1, color: app_menu_textcolor),
                    )
                  ),
                  tabs: [
                    for(final tab in Akhbar.akhbar)
                      Tab(text: tab,),
                  /*  Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  */],
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  unselectedLabelStyle: TextStyle(fontStyle: FontStyle.normal, fontSize: 18),
                ),
              ),
            )
          ),
          body:  TabBarView(
            children: [

             /* Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),*/
              for(final tab in Akhbar.akhbar)
                Center(child: Text(tab),)
            ],
          ),
        ),
      ),
    );

  }
}
/*Scaffold(
      body: Stack(
          children: [
            Container(
        width: MediaQuery.of(context).size.width,
              height: 600,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("images/splash.png",),
                    fit: BoxFit.contain,)),),
            Text("Powered By Danat FP",style: heading1)
    ],
        ),
    );*/