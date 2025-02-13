import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.cyan,
      ),
      child: Center(
          child: Text(
        "Find Tickets",
        style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
      )),
    );
  }
}
