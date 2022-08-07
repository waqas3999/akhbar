import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState(){
    super.initState();
    _navigateToLanding();
  }
  _navigateToLanding()async{
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Landing()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
