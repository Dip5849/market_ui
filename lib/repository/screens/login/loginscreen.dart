import "package:flutter/material.dart";
import "package:market_ui/domain/constants/companyname.dart";
import "package:market_ui/repository/screens/bottomNav/bottomnavscreen.dart";
import "package:market_ui/repository/widgets/uihelper.dart";

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController numController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Uihelper.CustomImage(img: 'login.png'),
          SizedBox(height: 10),
          SizedBox(
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: SizedBox(
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Uihelper.CustomImage(img: 'app_logo.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 30,
                    child: Uihelper.CustomText(
                      text: "Save money, Save time.",
                      color: const Color.fromARGB(255, 255, 208, 0),
                      weight: FontWeight.bold,
                      fontfamily: "bold",
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(
            height: 250,
            width: 350,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Uihelper.CustomText(
                            text: "Enter your phone number",
                            color: Colors.black,
                            weight: FontWeight.bold,
                            size: 22,
                          ),
                        ),
                        Uihelper.CustomText(
                          text: "You will receive an one time pin via SMS",
                          color: Colors.black,
                          weight: FontWeight.normal,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox( width: 300,
                    child: TextField(
                      controller: numController,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                        // hintText: "1624******",
                        labelText: 'number',
                        prefixText: '+880 ',

                        prefixStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ) ,
                        
                        
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          
                    
                          borderSide: BorderSide(width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                    
                          borderSide: BorderSide(width: 1.5,color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox( height: 50, width: 180,
                    child: ElevatedButton(
                      onPressed: (){
                        print(numController.text);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNavScreen()));
                        }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      
                      child: Text("Login with OTP")
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}
