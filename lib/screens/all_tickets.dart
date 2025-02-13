import 'package:flutter/material.dart';
import 'package:flutter_basics/base/utils/app_json.dart';
import 'package:flutter_basics/base/widgets/ticket_view.dart';
import 'package:flutter_basics/screens/widgets/app_routes.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tickets"),
        backgroundColor: Colors.yellow[200],
      ),
      backgroundColor: Colors.amber[50],
      body: ListView(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                    onTap: (){
                      var index = ticketList.indexOf(singleTicket);
                      print("I am Tapped on ticket $index");
                      //navigate to details of that ticket
                      Navigator.pushNamed(
                          context, AppRoutes.ticketView,
                          arguments: {"index": index}
                      );
                    },
                    child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TicketView(
                            ticket: singleTicket,
                            wholeScreen: true,
                          ),
                        ),
                  ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
