import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/media.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/base/utils/app_json.dart';
import 'package:flutter_basics/base/widgets/layout_builder.dart';
import 'package:flutter_basics/base/widgets/ticket_head_text.dart';
import 'package:flutter_basics/base/widgets/ticket_text.dart';
import 'package:flutter_basics/base/widgets/ticket_view.dart';
import 'package:flutter_basics/screens/widgets/ticket_tabs.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    var arguments = ModalRoute.of(context)!.settings.arguments as Map;
    print("passed index = ${arguments["index"]}");
    ticketIndex = arguments["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime[100],
        appBar: AppBar(
          title: Center(child: Text("Ticket Details"),),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            //SizedBox(height: 20,),
            //Text("Your Tickets!!", style: AppStyles.headlineStyle1,),
            //SizedBox(height: 20,),
            TicketTabs(tab1: "Upcoming", tab2: "Previous",),
            const SizedBox(height: 20,),
            Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[ticketIndex], isColor: true,)
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 0.5
                    )]
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TicketHeadText(text: "Your Ticket", isColor: true,),
                          TicketText(text: "Passenger", isColor: true,),
                        ],
                      ),
                      Column(
                        children: [
                          TicketHeadText(text: "94886-6309", isColor: true,),
                          TicketText(text: "Passport-Code", isColor: true,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  AppLayoutBuilder(randomDivider: 15, isColor: true, width: 5,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TicketHeadText(text: "85094-88666", isColor: true,),
                          TicketText(text: "E-Ticket Number", isColor: true,),
                        ],
                      ),
                      Column(
                        children: [
                          TicketHeadText(text: "D66309", isColor: true,),
                          TicketText(text: "Booking-Code", isColor: true,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  AppLayoutBuilder(randomDivider: 15, isColor: true, width: 5,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(children: [
                            Image.asset(AppMedia.visa, scale: 11,),
                            Text("*** 4454", style: AppStyles.headlineStyle3,)
                          ],),
                          TicketText(text: "Payment Method", isColor: true,),
                        ],
                      ),
                      Column(
                        children: [
                          TicketHeadText(text: "₹38,999", isColor: true,),
                          TicketText(text: "Price", isColor: true,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Bottom of ticket Details
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 0.5
                    )],
                color: Colors.white
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15,),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                      data: 'https://github.com/VEDANTDHAVAN',
                      barcode: Barcode.code128(),
                      height: 70,
                      drawText: false,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[ticketIndex],)
            ),
          ],
        ),

    );
  }
}
