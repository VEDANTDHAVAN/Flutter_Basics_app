import 'package:flutter/material.dart';

class BigDots extends StatelessWidget {
  const BigDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 5,color: Colors.white),
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
