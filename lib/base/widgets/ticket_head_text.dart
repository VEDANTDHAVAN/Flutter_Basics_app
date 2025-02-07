import 'package:flutter/material.dart';

import '../rest/styles/app_styles.dart';

class TicketHeadText extends StatelessWidget {
  final String text;
  const TicketHeadText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle3.copyWith(color: Colors.grey[50],
          fontSize: 20),
    );
  }
}
