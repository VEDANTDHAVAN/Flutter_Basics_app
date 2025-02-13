import 'package:flutter/material.dart';
import 'package:flutter_basics/base/rest/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  final bool wholeScreen;
  final Map<String, dynamic> hotel;
  const Hotels({
    super.key,
    this.wholeScreen = false,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(8),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.blue[400], borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hotel['place'],
              style:
                  AppStyles.headlineStyle1.copyWith(color: Colors.yellowAccent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hotel['destination'],
              style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "₹ ${hotel['price']}/night",
              style:
                  AppStyles.headlineStyle2.copyWith(color: Colors.yellowAccent),
            ),
          )
        ],
      ),
    );
  }
}
