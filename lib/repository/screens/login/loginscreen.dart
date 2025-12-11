import "package:flutter/material.dart";
import "package:market_ui/domain/constants/companyname.dart";
import "package:market_ui/repository/widgets/uihelper.dart";

class Loginscreen extends StatefulWidget{
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Uihelper.CustomImage(img: 'login.png'),
          SizedBox(height: 10,),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9)
            ),
            child: SizedBox(height: 80,
              child: ClipRRect( 
                borderRadius: BorderRadius.circular(9),
                child:  Uihelper.CustomImage(img: 'app_logo.jpg')),
            )
          )
        ],
      ),
    );
  }
}