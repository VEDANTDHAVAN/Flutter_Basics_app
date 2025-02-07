import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/media.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/base/widgets/double_text.dart';
import 'package:flutter_basics/base/widgets/ticket_view.dart';
import 'package:flutter_basics/base/utils/app_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   //Column
   //ListView
    
   //ListView.Builder
   //Expand
    return Scaffold(
      backgroundColor: Colors.lime[50],
      body: ListView(
        //for scrollable Effect
        padding: EdgeInsets.symmetric(horizontal: 10),
        children:[
          const SizedBox(height: 40,),
          Container(
            color: Colors.amber[50],
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning!!", style: AppStyles.headlineStyle3),
                        const SizedBox(height: 10,),
                        Text("Book Tickets",style: AppStyles.headlineStyle1)
                      ],
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue[100],
                          image: DecorationImage(image: AssetImage(AppMedia.logo))
                        ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                  ),
                  child: const Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular),
                        Text("Search"),
                      ]
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40,),
          DoubleText('Upcoming Flights', 'View all'),
          const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
