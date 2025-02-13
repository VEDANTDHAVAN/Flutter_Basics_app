import 'package:flutter/material.dart';

import '../rest/styles/app_styles.dart';

class TicketHeadText extends StatelessWidget {
  final String text;
  final isColor;
  const TicketHeadText({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:isColor==null? AppStyles.headlineStyle3
          .copyWith(color: Colors.grey[50], fontSize: 20):AppStyles.headlineStyle3.copyWith(fontSize: 20),
    );
  }
}
