import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/base/widgets/double_text.dart';
import 'package:flutter_basics/screens/widgets/find_tickets.dart';
import 'package:flutter_basics/screens/widgets/text_icon.dart';
import 'package:flutter_basics/screens/widgets/ticket_promotion.dart';
import 'package:flutter_basics/screens/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "What are\n you Looking for?",
            style: AppStyles.headlineStyle1
                .copyWith(color: Colors.indigo[900], fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          TicketTabs(tab1: "All Tickets", tab2: "Hotels",),
          SizedBox(
            height: 20,
          ),
          TextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          SizedBox(
            height: 20,
          ),
          TextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          SizedBox(
            height: 20,
          ),
          FindTickets(),
          SizedBox(
            height: 20,
          ),
          DoubleText("Upcoming Flights", "View All",
              () => Navigator.pushNamed(context, "all_tickets")),
          SizedBox(
            height: 10,
          ),
          TicketPromotion(),
        ],
      ),
    );
  }
}
