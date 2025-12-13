import 'package:flutter/material.dart';

class Uihelper {

  static Image CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight weight,
    String? fontfamily,
    required double size,
    TextAlign aling = TextAlign.left
    
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: fontfamily ?? "regular",
        fontWeight: weight,
        color: color,
        
      ),
      textAlign: aling,
    );
  }



  
}
