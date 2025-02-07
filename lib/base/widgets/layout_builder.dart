import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double width;
  const AppLayoutBuilder({super.key, required this.randomDivider, this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("Max width: ${(constraints.constrainWidth()/randomDivider).floor()}");

        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate((constraints.constrainWidth()/randomDivider).floor(), (index) =>SizedBox(
            width: width, height: 2,
            child: const DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
          )),
        );
      },
    );
  }
}
