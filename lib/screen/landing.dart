import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/screen/splash.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class Landing extends StatefulWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  String? imageicon;
  int? imageiconcolor;

  Landing({Key? key, this.imageicon, this.imageiconcolor}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: DefaultTabController(
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
    child: Image.asset("images/uaccount.png",/*color: app_Whitecolor*/),
    )),
    leadingWidth: 35,

    title:    Image.asset("images/login.PNG",scale: 3,),
    centerTitle: true,
    shadowColor: app_Whitecolor,
    toolbarHeight: 60,
    elevation: 0.0,
    actions:<Widget> [
    GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>MenuScreen()));
    },
    child: Padding(
    padding:  EdgeInsets.all(8.0),
    child:Image.asset("images/menuss.PNG",scale: 2,),
    )),

    ],
    bottom:  PreferredSize(
    preferredSize: Size.fromHeight(60),
    child: DecoratedBox(
    decoration: BoxDecoration(
         shape: BoxShape.rectangle,

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
