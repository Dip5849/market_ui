import "package:flutter/material.dart";

class Companyname {
  static  RichText Name = RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "ChalDal",
                style: TextStyle(fontSize: 25, color: Colors.white)
              ),
              TextSpan(
                text: ".com",
                style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 233, 23, 23))
              )
            ]
          ),
        );
}