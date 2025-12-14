import 'package:flutter/material.dart';
import 'package:market_ui/repository/widgets/uihelper.dart';

class Itemviewer {
  static SizedBox show({required List itemList}) {
    return SizedBox(
      width: double.infinity,
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 12.0,
          right: 20.0,
          top: 2.0,
          bottom: 0.0,
        ),
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 77,
              child: Column(
                children: [
                  Container(
                    height: 78,
                    width: 71,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 235, 235, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      "assets/images/${itemList[index]['img']}",

                      // height: 70,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: Uihelper.CustomText(
                      text: "${itemList[index]['text']}",
                      color: Colors.black,
                      weight: FontWeight.w700,
                      size: 10,
                      aling: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static Row categoryTitle({required String title}){
    return Row(
                    children: [
                      SizedBox(width: 20),
                      Uihelper.CustomText(
                        text: title,
                        color: Colors.black,
                        weight: FontWeight.bold,
                        size: 14,
                        fontfamily: 'bold',
                      ),
                    ],
                  );
  }
}
