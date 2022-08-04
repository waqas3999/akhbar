import 'package:akhbar/model/akhbar.dart';
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class ListField extends StatefulWidget {
  final String label;

  const ListField({Key? key, required this.label}) : super(key: key);

  @override
  State<ListField> createState() => _ListFieldState();
}

class _ListFieldState extends State<ListField> {
  @override
  Widget build(BuildContext context) {
    return Container(
       // padding: const EdgeInsets.only(left:10 ,right: 22),
     // width: MediaQuery.of(context).size.width,
      height: 59,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: app_Greycolor,

        //border: Border.all(color: app_Cont_Textcolor, width: 1),
       // borderRadius: BorderRadius.circular(10)
      ),
      child: GestureDetector(
        onTap: (){

          if(Akhbar.akhbar.contains(widget.label))
          {
            Akhbar.selecteditem=widget.label;
          }
         /* ApiResponseService apiresponse= ApiResponseService();
          var ans =  await apiresponse.getResponseCity(apiKey: ApiKey.key, cityName:widget.label);
         */
          Akhbar.selecteditem=widget.label;
          Navigator.pop(context);
          Navigator.of(context)
              .push(
              MaterialPageRoute(builder: (_) =>  Landing()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [/*
            SizedBox(width: 5,child: Divider(
              height: 2,
              thickness: 2,
              color: app_menu_textcolor,
            ),),*/
            Text(widget.label,style: heading8),
          ],
        ),
      ),
    );
  }
}
