import "package:flutter/material.dart";

class Companyname {
  final Color? textColor;
  final Color? color;
  Companyname({this.textColor, this.color});

  
  RichText get name => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "ChalDal",
              style: TextStyle(fontSize: 20, color: textColor ?? const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ".com",
              style: TextStyle(fontSize: 16, color: color ?? const Color.fromARGB(255, 233, 23, 23)),
            ),
          ],
        ),
      );
}