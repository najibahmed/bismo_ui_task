import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:loyality_card_wallet/app/utils/dimension.dart';
import 'package:loyality_card_wallet/app/widgets/big_text.dart';
import 'package:loyality_card_wallet/app/widgets/small_text.dart';

import '../utils/colors.dart';

class Giftcarditem extends StatelessWidget {
  final String img;
  final int index;

  const Giftcarditem({super.key, required this.img, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RouteHelper.getCardAdd());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimension.height10 / 2),
        child: Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: cardListGradients[index % 10],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimension.height10 * 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            img,
                            width: Dimension.width10 * 10,
                            height: Dimension.height10 * 10,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: Dimension.height10 * 3),
                          SizedBox(
                            width: 150,
                            child: BigText(
                              text: "StarBucks",
                              size: Dimension.height10 * 2.5,
                            ),
                          ),
                          SizedBox(height: Dimension.height10),
                          SmallText(
                            text: "Coupon Card",
                            size: 16,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 8,
              child: Container(
                height: Dimension.height10 * 2.5,
                width: Dimension.height10 * 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red),
              child: const Center(child: Text('1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
