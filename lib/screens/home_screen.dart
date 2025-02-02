import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   //Column
   //ListView
    
   //ListView.Builder
   //Expand
    return Scaffold(
      body: ListView(
        //for scrollable Effect
        children: [
          Container(child: Text("Hell0, Home "),),
          Container(child: Text("Hell0, Child Screen "),)
        ],
      ),
    );
  }
}
