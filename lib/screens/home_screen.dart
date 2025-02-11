import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/media.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/base/widgets/double_text.dart';
import 'package:flutter_basics/base/widgets/ticket_view.dart';
import 'package:flutter_basics/base/utils/app_json.dart';
import 'package:flutter_basics/screens/widgets/hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   //Column
   //ListView
    
   //ListView.Builder
   //Expand
    return Scaffold(
      backgroundColor: Colors.lime[100],
      body: ListView(
       children: [
         const SizedBox(height: 40,),
         Container(
           //for scrollable Effect
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:[
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.amber[200]
                 ),
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
               DoubleText(
                   'Upcoming Flights', 'View all',
                       ()=> Navigator.pushNamed(context, "all_tickets")
               ),
               const SizedBox(height: 20,),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: ticketList.take(3).map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
                 ),
               ),
               const SizedBox(height: 40,),
               DoubleText(
                   'Hotels', 'View all',
                       () {
                     print("object");
                   }
               ),
               const SizedBox(height: 20,),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                   child:  Row(
                     //children:[ Hotels(),],
                     children: hotelList.take(3).map((singleHotel) => Hotels(hotel: singleHotel)).toList(),
                   )
               )
             ],
           ),
         )
       ],
      ),
    );
  }
}
