import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class ArtcleBottom_Section extends StatelessWidget {
   ArtcleBottom_Section({Key? key}) : super(key: key);
    @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width,
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
    color: app_menu_textcolor
      )
        ]
      ),
    );
  }
}
