import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtcleBottom_Section extends StatelessWidget {
   ArtcleBottom_Section({Key? key}) : super(key: key);
  final Uri _url = Uri.parse('https://twitter.com');
  @override
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
    @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width,
      height: 50,
      child: Column(
        children:[ Row(
//                mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap:(){
                _launchUrl();
              },
              child: Container(
                height: 25,
                width: 55,
                decoration: BoxDecoration(
                    color: twitter_color,
                    borderRadius: BorderRadius.circular(2)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("غزد", style: twitter_text,),
                    const SizedBox(width: 3,),
                    SizedBox(height: 12,
                        width: 12,
                        child: Image.asset("images/twitter.png",
                          color: app_Whitecolor,)),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Text("13", style: message_text,),
            const SizedBox(width: 5,),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.messenger, size: 16,
                color: app_menu_textcolor,),
            ),
            const SizedBox(width: 15,),
            Text("2,986", style: message_text,),
            const SizedBox(width: 5,),
            GestureDetector(
              onTap: (){},
              child: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset("images/glasses.png",
                    color: app_menu_textcolor,)),
            ),
            const SizedBox(width: 15,),
            Text("مون ساعات", style: message_text,),
            const SizedBox(width: 3,),
            SizedBox(width: 12, height: 12, child: Image.asset(
              "images/clock.png", color: app_menu_textcolor,)),
            const Spacer(),
            Image.asset("images/24h.PNG", scale:1.1,),

          ],
        ),
    const SizedBox(height: 5,),
    Divider(
    height: 0.5,
    color: app_menu_textcolor
      )]),
    );
  }
}
