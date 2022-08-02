
import 'package:akhbar/utils/utils.dart';
import 'package:flutter/material.dart';

class MailField extends StatefulWidget {
  MailField({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  State<MailField> createState() => _MailFieldState();
}

class _MailFieldState extends State<MailField> {
  final TextEditingController txtxtrl=TextEditingController();
  FocusNode _focusNode = FocusNode();
  Color _borderColor = Colors.grey;
  @override
  void initState() {
    super.initState();
    // Change color for border if focus was changed
    _focusNode.addListener(() {
      setState(() {
        _borderColor = _focusNode.hasFocus ? Colors.orange : Colors.grey;
      });
    });
  }
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return TextFormField(

             focusNode: _focusNode,
             textAlign: TextAlign.right,
            controller: txtxtrl,
            maxLines: 2,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: app_Grey_textcolor,width: 2),

                ),
                contentPadding:EdgeInsets.only(bottom: 70,left: 10,right: 8),
                floatingLabelBehavior:FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                focusColor:Color(0xFFA8A8A8) ,
              hintMaxLines: 2,

              label:Padding(
                padding: const EdgeInsets.only(top: 70,left: 10,right: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('تسجيل داخل')),
              ),
                labelStyle:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
                hintText: widget.title,
                hintStyle: const TextStyle(fontFamily: "Poppins",color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
                border:new OutlineInputBorder(
                  borderRadius:new  BorderRadius.circular(10),
                  borderSide: new BorderSide(color: app_Grey_textcolor,width: 2),
                )

    ));
    }
}


