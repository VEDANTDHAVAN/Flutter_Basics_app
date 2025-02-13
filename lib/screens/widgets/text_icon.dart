import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';

class TextIcon extends StatelessWidget {
  const TextIcon({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                spreadRadius: 1
            )]
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.cyan[800],
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyles.headlineStyle1,
          )
        ],
      ),
    );
  }
}
