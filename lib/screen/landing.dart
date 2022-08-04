
import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/menu_screen.dart';
import 'package:akhbar/screen/sign_in.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/combine_button.dart';
import 'package:akhbar/widget/listfield.dart';
import 'package:flutter/material.dart';
class Landing extends StatefulWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  String? imageicon;
  int? imageiconcolor;
   Landing({Key? key,this.imageicon,this.imageiconcolor}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          backgroundColor: app_Whitecolor,
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("images/uaccount.png",color: app_Blackcolor),
              )),
          leadingWidth: 35,

          title:    Image.asset("images/akhbar.jpg",scale: 3,),
          centerTitle: true,
          shadowColor: app_Whitecolor,
          toolbarHeight: 64,
          elevation: 10.0,
          actions:<Widget> [
            IconButton(
              icon: Image.asset("images/menu.png",color: app_Blackcolor,scale: 1,),tooltip: 'Show Menu', onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('This is a Menu')));

              Navigator.push(context, MaterialPageRoute(builder: (_)=>MenuScreen()));

            },

            ),],

      ),
    body: Column(
      children: [
       // Combine_Buttton(),
SizedBox(height: 20,),
    /*Expanded(
      child: ListView.separated(
      padding: const EdgeInsets.all(8),
        itemCount: widget.entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[widget.colorCodes[index]],
            child: Center(child: Text('Entry ${widget.entries[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    ),*/

        /*Container(
          height: 300,
          child: ListView.builder(
            itemExtent: 50.0,
           // scrollDirection: Axis.horizontal,
                    //   shrinkWrap: true,
            padding: EdgeInsets.zero,
              itemCount: Akhbar.akhbar.length,
              itemBuilder: (BuildContext context,int index){
                return  ListTile(
                    title: Padding(
                     padding:  EdgeInsets.zero,
                     child: ListField(label:Akhbar.akhbar[index],),
                   ));
            }),),
                */
        Expanded(
          child: ListView(
            children: const <Widget>[
              Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with leading widget'),
                ),
              )]),
        ),
        Container(
          color: Colors.green,
          child: Material(
            child: ListTile(
              title: const Text('ListTile with red background'),
              tileColor: Colors.red,),),)

      ],




    ));
  }
}
