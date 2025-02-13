import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String tab1;
  final String tab2;
  const TicketTabs({super.key, required this.tab1, required this.tab2});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
        boxShadow:  [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            spreadRadius: 1
        )]
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: tab1,
            tabColor: true,
          ),
          AppTabs(
            tabText: tab2,
            tabBorder: true,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: tabColor == false ? Colors.white : Colors.lightGreenAccent[100],
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: Center(
        child: Text(tabText),
      ),
    );
  }
}
