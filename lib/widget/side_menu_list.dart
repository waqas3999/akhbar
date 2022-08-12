import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class SideMenuList extends StatelessWidget {
  const SideMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount:Akhbar.akhbar.length,
        separatorBuilder: (BuildContext context, int index) =>  Divider(
          thickness: 1,
          height: 1,
          color: app_menu_textcolor,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
              title: Text("${Akhbar.akhbar[index]}", style:txtfield_menu,
                  textAlign: TextAlign.end,

              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
              }

          );
        },
      ),
    );
  }
}
