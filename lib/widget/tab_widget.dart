import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';
class TabWidget extends StatelessWidget {
  final String title;
  final bool   isSeperator;
  const TabWidget({Key? key, required this.title, required this.isSeperator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        width: 100,
        height: 20,
        child: Center(
          child: Text(title),
        ),
        decoration: isSeperator
            ? BoxDecoration(
          border: Border(
            left: BorderSide(
              color: app_menu_textcolor,
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
        )
            : null,
      ),
    );
  }}