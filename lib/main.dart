import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/all_tickets.dart';
import 'package:flutter_basics/screens/ticket_screen.dart';
import 'package:flutter_basics/screens/widgets/app_routes.dart';

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
      //home: BottomNavBar(),
      routes: { //"all_tickets": (context) => AllTickets(),
        AppRoutes.home:(context)=> const BottomNavBar(),
        AppRoutes.allTickets:(context)=> const AllTickets(),
        AppRoutes.ticketView:(context)=> const TicketScreen()
      }
    );
  }
}
