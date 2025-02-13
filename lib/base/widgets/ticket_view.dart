import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/base/widgets/big_circle.dart';
import 'package:flutter_basics/base/widgets/big_dot.dart';
import 'package:flutter_basics/base/widgets/layout_builder.dart';
import 'package:flutter_basics/base/widgets/ticket_head_text.dart';
import 'package:flutter_basics/base/widgets/ticket_text.dart';

class TicketView extends StatelessWidget {
  final bool wholeScreen;
  final bool? isColor;
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 184,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //upper part of ticket
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: isColor==null? AppStyles.ticketColor: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22)),
                  boxShadow: [
                  BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 2
              )]
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketHeadText(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDots(isColor: isColor,),
                      Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 25,
                                child: AppLayoutBuilder(
                                  randomDivider: 6,
                                  isColor: isColor,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_outlined,
                                    color:isColor==null? Colors.white: Colors.lightBlueAccent,
                                  ),
                                ),
                              )
                            ],
                          )),
                      BigDots(isColor: isColor,),
                      Expanded(child: Container()),
                      TicketHeadText(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      TicketText(
                        text: ticket["from"]["name"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TicketText(text: ticket["flying_time"], isColor: isColor,),
                      Expanded(child: Container()),
                      TicketText(
                        text: ticket["to"]["name"],
                        isColor: isColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            //central border
            Container(
              height: 20,
              color: isColor==null? AppStyles.ticketColor2:Colors.white,
              child: Row(
                children: [
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 12,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            //lower part of ticket
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TicketHeadText(
                        text: ticket["date"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TicketHeadText(
                          text: ticket["departure_time"],
                          isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TicketHeadText(
                        text: ticket["number"].toString(),
                        isColor: isColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                       TicketText(
                          text: "NYC",
                          isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TicketText(
                        text: "          Departure Time",
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TicketText(
                        text: "NUMBER",
                        isColor: isColor,
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color:isColor==null? Colors.deepOrange[300]: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 0.5
                    )]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
