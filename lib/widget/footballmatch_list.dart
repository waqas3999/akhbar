import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class FootballMatchList extends StatelessWidget {
  const FootballMatchList({Key? key, required this.team1, required this.team2, required this.teamscore1, required this.teamscore2, required this.date, required this.time, required this.team_flag1, required this.team_flag2,}) : super(key: key);
final String team1,team2;
final int  teamscore1,teamscore2;
final String date,time;
final String team_flag1,team_flag2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:botttombar_color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(team1,style:matchlist_text,),
          //    SizedBox(width: 5,)                     ,
          Text(teamscore1.toString(),style:goal_blue_style),
          Image.asset(team_flag1,scale: 12,),
          /// SizedBox(width: 5,),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(time,style: txtfield_menu,),
                SizedBox(height: 5,),
                Text(date,style: textfield_style,)
          ]),
          //  SizedBox(width: 5,),
          Image.asset(team_flag2,scale: 12,),
          //   SizedBox(width: 5,),
          Text(teamscore2.toString(),style:goal_red_style,),
          Text(team2,style:matchlist_text,),
        ],
      ),
    );
  }
}
