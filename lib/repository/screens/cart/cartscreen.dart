import "package:flutter/material.dart";
import "package:market_ui/domain/constants/companyname.dart";
import "package:market_ui/repository/widgets/uihelper.dart";

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  var TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.amberAccent,
          ),
          SizedBox(
            height: 200,
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(children: [SizedBox(width: 20), Companyname.Name]),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Uihelper.CustomText(
                      text: "69 minutes",
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Uihelper.CustomText(
                      text: "HOME - ",
                      color: Colors.black,
                      weight: FontWeight.bold,
                      size: 15,
                    ),
                    Uihelper.CustomText(
                      text: "Sibu Market, Fatullah, Narayangonj",
                      color: Colors.black,
                      weight: FontWeight.normal,
                      size: 12,
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: 70,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white60,
              child: Icon(Icons.person_4_rounded, color: Colors.black),
            ),
          ),
          TextField(

          )
        ],
      ),
    );
  }
}
