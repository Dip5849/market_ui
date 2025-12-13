import "package:flutter/material.dart";
import "package:market_ui/repository/widgets/appbar.dart";
import 'package:market_ui/repository/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

 

    @override
    State<HomeScreen> createState() => _HomeScrenState();

}

class _HomeScrenState extends State<HomeScreen>{
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
    

    return Scaffold(
      body: Column(
        children: [
          Appbar.show(
            controller: search,
            backgroundColor: const Color.fromARGB(206, 241, 0, 0),
            textColor: Colors.white,
            comColor: const Color.fromARGB(255, 255, 251, 0),
            companyColor: Colors.white
          ),

          
        ],
      )
    );
  }
}
