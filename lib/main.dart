import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/all_tickets.dart';

import 'base/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      routes: {
        "all_tickets":(context)=> AllTickets()
      },
    );
  }
}

