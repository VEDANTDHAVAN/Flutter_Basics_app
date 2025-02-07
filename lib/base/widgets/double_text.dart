import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';
import 'package:flutter_basics/screens/all_tickets.dart';

class DoubleText extends StatelessWidget {
  const DoubleText(this.bigText, this.smallText);
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headlineStyle1,),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => AllTickets(),
              )
            );
          },
          child: Text(smallText, style: AppStyles.headlineStyle2,),
        )
      ],
    );
  }
}
