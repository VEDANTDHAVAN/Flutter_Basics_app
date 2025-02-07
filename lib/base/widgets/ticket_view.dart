import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/base/widgets/big_circle.dart';
import 'package:flutter_basics/base/widgets/big_dot.dart';
import 'package:flutter_basics/base/widgets/layout_builder.dart';
import 'package:flutter_basics/base/widgets/ticket_head_text.dart';
import 'package:flutter_basics/base/widgets/ticket_text.dart';

class TicketView extends StatelessWidget {

  final bool wholeScreen;
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket, this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 188,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),

        child: Column(
          children: [
            //upper part of ticket
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketHeadText(text: ticket["from"]["code"],),
                      Expanded(child: Container()),
                      BigDots(),
                      Expanded(child: Stack(children: [
                        SizedBox(
                          height: 25,
                          child: AppLayoutBuilder(randomDivider: 6,),
                        ),
                        Center(child: Transform.rotate(angle: 1.5,
                          child: Icon(Icons.local_airport_outlined, color: Colors.white,),
                        ),)
                      ],)),
                      BigDots(),
                      Expanded(child: Container()),
                      TicketHeadText(text: ticket["to"]["code"],),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      TicketText(text: ticket["from"]["name"],),
                      Expanded(child: Container()),
                      TicketText(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      TicketText(text: ticket["to"]["name"],),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(22), topRight: Radius.circular(22))
              ),
            ),
            //central border
            Container(
              height: 20, color: AppStyles.ticketColor2,
              child: Row(
                children: [
                  BigCircle(isRight: true,),
                  Expanded(child: AppLayoutBuilder(randomDivider: 12, width: 6,)),
                  BigCircle(isRight: false,),
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
                      TicketHeadText(text: ticket["date"],),
                      Expanded(child: Container()),
                      TicketHeadText(text: ticket["departure_time"]),
                      Expanded(child: Container()),
                      TicketHeadText(text: ticket["number"].toString(),),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      const TicketText(text: "NYC"),
                      Expanded(child: Container()),
                      const TicketText(text: "          Departure Time"),
                      Expanded(child: Container()),
                      const TicketText(text: "NUMBER"),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
