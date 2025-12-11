import "dart:async";

import "package:flutter/material.dart";
import "package:market_ui/domain/constants/appcolors.dart";
import "package:market_ui/repository/screens/login/loginscreen.dart";
import "package:market_ui/repository/widgets/uihelper.dart";

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState(){

    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Appcolors.ScaffoldBackgound,
      body: Center(
        child: Uihelper.CustomImage(img: "logo1.png"),
      )
    );
  }
}