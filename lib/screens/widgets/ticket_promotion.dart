import 'package:flutter/material.dart';
import '../../base/rest/media.dart';
import '../../base/rest/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .43,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 3, spreadRadius: 1)
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(
                          AppMedia.planeSit,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "30% Off!!\non the early Booking of this Flight.\nDon't miss!!",
                style: AppStyles.headlineStyle2
                    .copyWith(color: Colors.blue[800]),
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .43,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 3, spreadRadius: 2)
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount for Survey!!",
                        style: AppStyles.headlineStyle3.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Take the Survey about our services and get Discounts!!",
                        style: AppStyles.headlineStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -30,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                        Border.all(width: 15, color: Colors.black12)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * .43,
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.deepOrangeAccent,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 3, spreadRadius: 1)
                  ]
              ),
              child: Column(
                children: [
                  Text(
                    "Happy Journey!! 😊 🥰🥰",
                    style: AppStyles.headlineStyle2
                        .copyWith(color: Colors.white),
                  ),

                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
