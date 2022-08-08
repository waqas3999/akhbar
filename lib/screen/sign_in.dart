
import 'package:akhbar/screen/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/widget/appbutton.dart';
import 'package:akhbar/widget/combine_textfield.dart';
import 'package:akhbar/widget/signin_btn.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

   const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_Whitecolor,
      appBar:AppBar(
        backgroundColor: app_Whitecolor,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Landing()));
            },
            child: Icon(Icons.close,size: 40,color: Colors.black,)),
            title:    Image.asset("images/login.PNG",scale: 2.5,),
            centerTitle: true,
            shadowColor: app_Whitecolor,
            toolbarHeight: 70,
             elevation: 0.0),
      body: Padding(
        padding:   EdgeInsets.only(left: 10,right: 10,top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("تسجيل داخل",style:login),
              SizedBox(height: 10,),
              CombineTextField(),
              SizedBox(height: 10,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text("تذكرنى",style: login,),
                   SizedBox(
                     width: 20.0,
                     height: 20.0,
                     child: Checkbox(
                         // materialTapTargetSize:,

                         value: checked, onChanged:(bool? value){
                       setState(() {
                         checked = value!;
                       });
                     }),
                   ),
                 ],
               ),
              SizedBox(height: 10,),
              AppButton(label:"تسجيل الداخل" ,
                  textColor:0xffF1F1F1, buttoncolor:0xFF0000FF, onPress: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Landing()));
                  }),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 175,
                      height: 1,
                      color: app_Greycolor),
                  ),
                  SizedBox(width: 2,),
                  Text("أو",style: or,),
                  SizedBox(width: 2,),
                  Expanded(
                    child: Container(
                      width: 175,
                      height: 1,
                      color: app_Grey_textcolor,
                    ),
                  ),
                  ],),
              
              Signin_Btn(label: "تسجيل الدخول بالبريد",textColor:0xFF000000, imcon:"images/email.png",iconcolor: 0xFFFF7F50,  onPress: (){Navigator.pop(context);}),
              Signin_Btn(label: "بريد الفيسبوك", textColor: 0xFF000000, imcon:"images/facebook.png",/*iconcolor: 0xFFFF7F50, */ onPress: (){
                Navigator.pop(context);
              }),
              Signin_Btn(label: "Google", textColor: 0xFF000000, imcon: "images/google.png",/*iconcolor: 0xFF000000,*/ onPress: (){
                Navigator.pop(context);
              }),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => Landing()));
                },
                child: Padding(
                  padding:  EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("اشتراك",style: share,),
                      Text("?هل لديك حساب",style:account ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
