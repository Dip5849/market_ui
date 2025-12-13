import "package:flutter/material.dart";
import "package:market_ui/repository/widgets/appbar.dart";
import "package:market_ui/repository/widgets/itemviewer.dart";
import "package:market_ui/repository/widgets/uihelper.dart";

class CatregoryScreen extends StatefulWidget {
  const CatregoryScreen({super.key});

  @override
  State<CatregoryScreen> createState() {
    return _CatregoryScreenState();
  }
}

class _CatregoryScreenState extends State<CatregoryScreen> {
  late final TextEditingController search;
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"},
  ];
  var hosuehold = [
    {"img": "image 36.png", "text": "Cleaning"},
    {"img": "image 37.png", "text": "Personal Care"},
    {"img": "image 38.png", "text": "Aestheic"},
    {"img": "image 39.png", "text": "Furnitures"},
    {"img": "image 40.png", "text": "Bath Essentials"},
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
        children: [
          Appbar.show(controller: search),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Itemviewer.categoryTitle(title: "Grocery & Kitchen"),
                  Itemviewer.show(itemList: grocerykitchen),
                  Itemviewer.show(itemList: secondgrocery),
                  SizedBox(height: 10),
                  Itemviewer.categoryTitle(title: "Snacks & Drinks"),
                  Itemviewer.show(itemList: snacksanddrinks),
                  SizedBox(height: 10),
                  Itemviewer.categoryTitle(title: "Household Essentials"),
                  Itemviewer.show(itemList: hosuehold),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
