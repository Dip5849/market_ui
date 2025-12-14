import "package:flutter/material.dart";
import "package:market_ui/repository/widgets/appbar.dart";
import 'package:market_ui/repository/widgets/uihelper.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({super.key});

  @override
  State<PrintScreen> createState() => _PrintScrenState();
}

class _PrintScrenState extends State<PrintScreen> {
  late TextEditingController search;
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
    return Scaffold(body: Container(
      color: const Color.fromARGB(31, 255, 214, 64),
      child: Column(
        children: [
          Appbar.show(controller: search),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                height: 30,
              ),
              Uihelper.CustomText(
                  text: "Print Store",
                  color: Colors.black,
                  weight: FontWeight.bold,
                  size: 32),
              Uihelper.CustomText(
                  text: "ChalDal ensures secure prints at every stage",
                  color: Color(0XFF9C9C9C),
                  weight: FontWeight.bold,
                  size: 14),
              SizedBox(
                height: 40,
              ),
              Stack(children: [
                Container(
                  height: 180,
                  width: 361,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Uihelper.CustomText(
                              text: "Documents",
                              color: Colors.black,
                              weight: FontWeight.bold,
                              size: 14)
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Uihelper.CustomImage(img: "star.png"),
                          SizedBox(
                            width: 7,
                          ),
                          Uihelper.CustomText(
                              text: "Price starting at Tk. 10/page",
                              color: Color(0XFF9C9C9C),
                              weight: FontWeight.normal,
                              size: 15)
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Uihelper.CustomImage(img: "star.png"),
                          SizedBox(
                            width: 7,
                          ),
                          Uihelper.CustomText(
                              text: "Paper quality: 70 GSM",
                              color: Color(0XFF9C9C9C),
                              weight: FontWeight.normal,
                              size: 15)
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Uihelper.CustomImage(img: "star.png"),
                          SizedBox(
                            width: 7,
                          ),
                          Uihelper.CustomText(
                              text: "Single side prints",
                              color: Color(0XFF9C9C9C),
                              weight: FontWeight.normal,
                              size: 15)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFF27AF34),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5))),
                                child: Text(
                                  "Upload Files",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 40,
                  child: Uihelper.CustomImage(img: "document.png"),
                )
              ])
                ],
              ),
            )
            )
          
        ],
      ),
    ));
  }
}
