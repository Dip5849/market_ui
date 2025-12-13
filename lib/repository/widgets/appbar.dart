import "package:flutter/material.dart";
import "package:market_ui/repository/widgets/uihelper.dart";
import "package:market_ui/domain/constants/companyname.dart";


class Appbar {

  static Stack show({Color backgroundColor = Colors.amberAccent,Color textColor = const Color.fromARGB(255, 0, 0, 0), required TextEditingController controller, Color? companyColor, Color? comColor}){

    return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                color: backgroundColor,
              ),
              SizedBox(
                height: 230,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Row(children: [SizedBox(width: 20), Companyname(textColor: companyColor, color: comColor).name]),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "69 minutes",
                          color: textColor,
                          weight: FontWeight.bold,
                          size: 28,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "HOME - ",
                          color: textColor,
                          weight: FontWeight.bold,
                          size: 15,
                        ),
                        Uihelper.CustomText(
                          text: "Sibu Market, Fatullah, Narayangonj",
                          color: textColor,
                          weight: FontWeight.normal,
                          size: 12,
                        ),
                        Icon(Icons.arrow_drop_down,color: textColor,),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsetsGeometry.only(top: 15, bottom: 10),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Expanded(
                              child: SizedBox( height: 45,
                                child: TextField(
                                  controller: controller,
                                  
                                  
                                  decoration: InputDecoration(
                                    hintText: "search for \"ass cream\"" ,
                                    prefixIcon: Icon(Icons.search),
                                    prefixIconColor: Colors.black87,
                                    suffixIcon: Icon(Icons.mic),
                                    suffixIconColor: Colors.black87,
                                    
                                    filled: true,
                                    fillColor: const Color.fromARGB(220, 255, 255, 255),
                                
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 0.5,
                                      ),
                                    ),
                                
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.deepPurpleAccent
                                      ),
                                    ),
                                    
                                    
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 70,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white60,
                  child: Icon(Icons.person_4_rounded, color: Colors.black),
                ),
              ),
            ],
          );
  }
}

