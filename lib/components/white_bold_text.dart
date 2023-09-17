import 'package:flutter/material.dart';

final class WhiteBoldText extends StatelessWidget {

  String contentText;

  WhiteBoldText({required this.contentText});

  @override 
  Widget build(BuildContext context){
    return  
      Text(
        contentText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
      );
  }

}