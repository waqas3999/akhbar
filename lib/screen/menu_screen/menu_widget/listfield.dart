import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class HomeField extends StatelessWidget {
  final String label;

  const HomeField( {Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: app_menuscreen_color,),
      child: GestureDetector(
        onTap: (){
          if(Akhbar.akhbar.contains(label))
          {
            Akhbar.selecteditem=label;
          }
          Akhbar.selecteditem=label;
          Navigator.pop(context);
          Navigator.of(context)
              .push(
              MaterialPageRoute(builder: (_) =>   Landing()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(label,style: listtile_text),
            Column(
              children: [
                Divider(
                  thickness: 1,
                  height: 0.6,
                  color: app_menu_textcolor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
