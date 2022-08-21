import 'package:flutter/material.dart';
class AppButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;
  final int buttoncolor;
  final int textColor;

  const AppButton({Key? key, required this.label,required this.onPress, required this.buttoncolor, required this.textColor,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 52,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(buttoncolor),
          border: Border.all(color: Color(buttoncolor), width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
          onTap: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label,textAlign: TextAlign.center,
                    style: TextStyle(color: Color(textColor), fontSize: 15,
                        fontWeight: FontWeight.w500, fontFamily: "Poppins")),
              ])
      ),


    );
  }
}
