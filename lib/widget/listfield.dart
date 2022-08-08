import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class HomeField extends StatefulWidget {
  final String label;

  HomeField({Key? key, required this.label}) : super(key: key);

  @override
  State<HomeField> createState() => _HomeFieldState();
}

class _HomeFieldState extends State<HomeField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: app_menuscreen_color,),
      child: GestureDetector(
        onTap: (){
          if(Akhbar.akhbar.contains(widget.label))
          {
            Akhbar.selecteditem=widget.label;
          }
          Akhbar.selecteditem=widget.label;
          Navigator.pop(context);
          Navigator.of(context)
              .push(
              MaterialPageRoute(builder: (_) =>  Landing()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(widget.label,style: listtile_text),
            Column(
              children: [
                Divider(
                  thickness: 1,
                  height: 1,
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
