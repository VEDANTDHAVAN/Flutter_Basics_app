import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';

class DoubleText extends StatelessWidget {
  const DoubleText(this.bigText, this.smallText, this.func);
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headlineStyle1,
        ),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: AppStyles.headlineStyle2,
          ),
        )
      ],
    );
  }
}
