import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class Listfield extends StatelessWidget {
  const Listfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        //padding:  EdgeInsets.all(4),
        itemCount: Akhbar.akhbar.length,
        itemBuilder: (BuildContext context, int index) {
          return Material(
            color: app_menuscreen_color,
            child: ListTile(
                title: Text("${Akhbar.akhbar[index]}", style:txtfield_menu,
                    textAlign: TextAlign.end),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
                }
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>  Divider(
          thickness: 1,
          height: 1,
          color:app_menu_textcolor)
      )
    );
  }
}
