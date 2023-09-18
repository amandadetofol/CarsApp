import 'package:flutter/material.dart';
import 'white_bold_text.dart';

final class AppButton extends StatelessWidget {

  String text;
  VoidCallback onTap;

  AppButton({super.key, required  this.text, required this.onTap});

  @override 
  Widget build(BuildContext context){
    return SizedBox(
        height: 48,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey
          ),
          onPressed: (){
            onTap();
          },
          child: 
            WhiteBoldText(
              contentText: text,
            )
          ),
        );
  }

}