import "package:flutter/material.dart";
import "package:market_ui/repository/widgets/appbar.dart";
import "package:market_ui/repository/widgets/itemviewer.dart";
import "package:market_ui/repository/widgets/uihelper.dart";

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final TextEditingController search;
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
  ];

  @override
  void initState() {
    super.initState();
    search = TextEditingController();
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Appbar.show(controller: search),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
               padding: const EdgeInsets.only(top: 20),
               child: SizedBox(
                    height: 290,
                    width: double.infinity,
                    
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Image.asset(
                            "assets/images/shoping_cart.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Uihelper.CustomText(text: "Reordering will be easy", color: Colors.black, weight: FontWeight.bold, size: 23, fontfamily: 'bold'),
                        SizedBox(
                          width: 320,
                          child: Uihelper.CustomText(text: "Items you order will show up here so you can buy them again easily", color: Colors.black, weight: FontWeight.bold, size: 13, aling: TextAlign.center),
                        )
                      ],
                    ),
                  ),
             ),
            SizedBox(height: 30,),
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Uihelper.CustomText(text: "Bestsellers", color: Colors.black, weight: FontWeight.bold, size: 20, fontfamily: 'bold', aling: TextAlign.left),
            
                    ],
                  ),
                ],
              ),
            ),
            Itemviewer.show(itemList: snacksanddrinks)
                ],
              ),
            ),
          ),
           

        ],

      ),
    );
  }
}
