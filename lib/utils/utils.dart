import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Colors
Color app_Blackcolor=const Color(0xFF000000);
Color app_Greycolor=const Color(0xFFBFBFBF);
Color app_Bluecolor=const Color(0xFF234EC4);
Color app_Whitecolor=const Color(0xFFFFFFFF);
Color app_Btn_bgcolor=const Color(0xFFE0E0E0);
Color app_Grey_textcolor=const Color(0xFFA8A8A8);
Color app_Cont_Textcolor=const Color(0xFFF6F6F6);
Color app_hscolor=const Color(0xFF5F5F5F);
Color app_redcolor=const Color(0xFFD62B47);
Color app_menuscreen_color=const Color(0xFF1D253C);
Color app_menu_textcolor=const Color(0xFF8E929E);
Color app_menu_roundbuttoncolor=const Color(0xFF28324E);
Color app_menu_listsepratercolor=const Color(0xFF232A41);
Color app_tickercolor=const Color(0xFFD32D54);
Color twitter_color=const Color(0xFF4AA0EC);
Color headline2=const Color(0xFF777777);
Color tab_textcolor=const Color(0xFF0A0A0A);
Color tab_unselectedcolor=const Color(0xFFA7A7A7);
Color botttombar_color=const Color(0xFFF4F4F4);
TextStyle red_text=GoogleFonts.poppins(
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: app_redcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));
TextStyle heading1=GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 20*( 3 / 100)
);

TextStyle login=GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
  letterSpacing: 20*( 3 / 100),


);
TextStyle textfield_style=GoogleFonts.poppins(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  color: app_Blackcolor,
  //fontStyle: FontStyle.normal,
  letterSpacing: 20*( 1 / 100),


);
TextStyle or=GoogleFonts.poppins(
    fontSize: 25,
   // decorationStyle:TextDecorationStyle.wavy,
    fontWeight: FontWeight.w500,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
    letterSpacing: 20*( 3 / 100)
);
TextStyle account=GoogleFonts.poppins(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
    letterSpacing: 20*( 3 / 100)
);
TextStyle share=GoogleFonts.poppins(
    fontSize: 19,
    // decorationStyle:TextDecorationStyle.wavy,
    fontWeight: FontWeight.w700,
    color: app_redcolor,
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.underline,
    letterSpacing: 20*( 3 / 100)
);
TextStyle heading8=GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: app_menu_listsepratercolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100)
);
TextStyle matchlist_text=GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));

TextStyle txtfield_menu=GoogleFonts.poppins(
fontSize: 17,
fontWeight: FontWeight.w500,
color: app_menu_textcolor,
fontStyle: FontStyle.normal,
letterSpacing: 63.5*(-0.5 / 100));

TextStyle listtile_text=GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));

TextStyle home_heading1=GoogleFonts.poppins(
fontSize: 30,
fontWeight: FontWeight.w600,
color: app_Blackcolor,
fontStyle: FontStyle.normal,
letterSpacing: 63.5*(-0.5 / 100));

TextStyle goal_blue_style=GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: app_Bluecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));
TextStyle goal_red_style=GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: app_redcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));

TextStyle home_heading2=GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w300,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));
TextStyle twitter_text=GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w200,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));
TextStyle message_text=GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w200,
    color: app_menu_textcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100));

///Hello,
/*
TextStyle heading2=GoogleFonts.poppins(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*( -0.5 / 100)
);
// let’s set you
TextStyle heading3=GoogleFonts.poppins(
    fontSize: 57,
    fontWeight: FontWeight.w600,
    color: app_Greycolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*( -0.5 / 100)
);

//// weather..
TextStyle heading4=GoogleFonts.poppins(
    fontSize: 57,
    fontWeight: FontWeight.w600,
    color: app_Bluecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100)
);

//// Select Current Location
TextStyle heading5=GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100)
);
//// Select City dropdown
TextStyle heading6=GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100)
);
/////Select City
TextStyle heading7=GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100)
);
TextStyle heading8=GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 63.5*(-0.5 / 100)
);
//Australia
TextStyle heading9=GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 33*(0.01 / 100)
);
//
TextStyle heading10=GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 30*( 1/ 100)
);
//Sydney, Australia
TextStyle heading11=GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: app_hscolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 22*( 1/ 100)
);
//
TextStyle heading12=GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 33*(1/ 100)
);
TextStyle temp=GoogleFonts.poppins(
    fontSize: 99,
    fontWeight: FontWeight.w700,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 148*(1/ 100)
);
TextStyle weather=GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing: 33*(3/ 100)
);
TextStyle degree=GoogleFonts.poppins(
    fontSize: 64,
    fontWeight: FontWeight.w500,
    color: app_Whitecolor,
    fontStyle: FontStyle.normal,
    letterSpacing:74*(3/ 100)
);
TextStyle now=GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: app_Blackcolor,
    fontStyle: FontStyle.normal,
    letterSpacing:18*(1/ 100)
);
*/
