import "package:flutter/material.dart";
import "package:market_ui/repository/widgets/appbar.dart";
import "package:market_ui/repository/widgets/itemviewer.dart";
import 'package:market_ui/repository/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScreen> {
  late TextEditingController search;
  var data = [
    {"img": "image 50.png", "text": "Lights, Crackers \n & Candles"},
    {"img": "image 51.png", "text": "Sweet \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"},
  ];
  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle"},
    {"img": "image 57.png", "text": "Royal Sweets\n From Sugondha"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden Lid Candle"},
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"},
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
          Appbar.show(
            controller: search,
            backgroundColor: const Color.fromARGB(206, 241, 0, 0),
            textColor: Colors.white,
            comColor: const Color.fromARGB(255, 255, 251, 0),
            companyColor: Colors.white,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                  Container(
                    height: 196,
                    width: double.infinity,
                    color: Color(0XFFEC0505),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Uihelper.CustomImage(img: "image 60.png"),
                            Uihelper.CustomImage(img: "image 55.png"),
                            Uihelper.CustomText(
                              text: "Mega 31st Night Sale",
                              color: Colors.white,
                              weight: FontWeight.bold,
                              size: 20,
                              fontfamily: "bold",
                            ),
                            Uihelper.CustomImage(img: "image 55.png"),
                            Uihelper.CustomImage(img: "image 61.png"),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 138,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Container(
                                    height: 108,
                                    width: 86,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFEAD3D3),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Uihelper.CustomText(
                                          text: data[index]["text"].toString(),
                                          color: Colors.black,
                                          weight: FontWeight.bold,
                                          size: 10,
                                          aling: TextAlign.center,
                                        ),
                                        Uihelper.CustomImage(
                                          img: data[index]["img"].toString(),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: data.length,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: 
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: 12),
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    height: 108,
                                    width: 93,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Uihelper.CustomImage(
                                      img: categroy[index]["img"].toString(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Uihelper.CustomText(
                                    text: categroy[index]["text"].toString(),
                                    color: Colors.black,
                                    weight: FontWeight.bold,
                                    size: 8,
                                    aling: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Uihelper.CustomImage(img: "timer 4.png"),
                                      Uihelper.CustomText(
                                        aling: TextAlign.start,
                                        text: "16 MINS",
                                        color: Color(0XFF9C9C9C),
                                        weight: FontWeight.normal,
                                        size: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(right: 60),
                                //   child: Row(children: [
                                //     Uihelper.CustomImage(img: "image 50.png"),
                                //     Uihelper.CustomText(aling:TextAlign.center, text:  "79", color: Color(0XFF9C9C9C), weight: FontWeight.bold, size: 15)

                                //   ],),
                                // )
                              ],
                            );
                          },
                          itemCount: categroy.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Uihelper.CustomText(
                        text: "Grocery & Kitchen",
                        color: Colors.black,
                        weight: FontWeight.bold,
                        size: 14,
                        fontfamily: "bold",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Itemviewer.show(itemList: grocerykitchen),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
