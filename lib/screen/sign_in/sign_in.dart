
import 'package:akhbar/screen/landing/landing.dart';
import 'package:akhbar/utils/utils.dart';
import 'package:akhbar/screen/sign_in/signin_widget/appbutton.dart';
import 'package:akhbar/screen/sign_in/signin_widget/combine_textfield.dart';
import 'package:akhbar/screen/sign_in/signin_widget/signin_btn.dart';
import 'package:akhbar/widget/custom_appbar.dart';
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
      appBar:/*AppBar(
        backgroundColor: app_Whitecolor,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const Landing()));
            },
            child: const Icon(Icons.close,size: 40,color: Colors.black,)),
            title:    Image.asset("images/login.PNG",scale: 2.5,),
            centerTitle: true,
            shadowColor: app_Whitecolor,
            toolbarHeight: 70,
             elevation: 0.0)*/CustomAppBar(leading_icon: "images/close.png",onleadingClick:(){ Navigator.push(
    context, MaterialPageRoute(builder: (_) => Landing()));},center_icon: "images/login.PNG",ontrailingClick: null, bg_color: 0xFFFFFFFF, leading_iconcolor: 0xFF000000,),
      body: Padding(
        padding:   const EdgeInsets.only(left: 10,right: 10,top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("تسجيل الدخول",style:login),
              const SizedBox(height: 10,),
              const CombineTextField(),
              const SizedBox(height: 10,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text("اسم المستخدم أو رقم الهاتف",style: login,),
                   const SizedBox(width: 5,),
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
              const SizedBox(height: 10,),
              AppButton(label:"تسجيل الدخول" ,
                  textColor:0xffF1F1F1, buttoncolor:0xFF0000FF, onPress: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Landing()));
                  }),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 175,
                      height: 1,
                      color: app_Greycolor),
                  ),
                  const SizedBox(width: 2,),
                  Text("أو",style: or,),
                  const SizedBox(width: 2,),
                  Expanded(
                    child: Container(
                      width: 175,
                      height: 1,
                      color: app_Grey_textcolor,
                    ),
                  ),
                  ],),
              
              Signin_Btn(label: "تواصل مع البريد الإلكتروني",textColor:0xFF000000, imcon:"images/email.png",iconcolor: 0xFFFF7F50,  onPress: (){Navigator.pop(context);}),
              Signin_Btn(label: "تواصل مع الفيسبوك", textColor: 0xFF000000, imcon:"images/facebook.png",/*iconcolor: 0xFFFF7F50, */ onPress: (){
                Navigator.pop(context);
              }),
              Signin_Btn(label: "تسجيل الدخول", textColor: 0xFF000000, imcon: "images/google.png",/*iconcolor: 0xFF000000,*/ onPress: (){
                Navigator.pop(context);
              }),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Landing()));
                },
                child: Padding(
                  padding:  const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("اشتراك",style: share,),
                      Text("?ليس لديك حساب",style:account ),

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
