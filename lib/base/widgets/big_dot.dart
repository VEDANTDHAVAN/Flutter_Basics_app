import 'package:flutter/material.dart';

class BigDots extends StatelessWidget {
  final bool? isColor;
  const BigDots({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 5, color: isColor==null? Colors.white: Colors.lightBlueAccent),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
