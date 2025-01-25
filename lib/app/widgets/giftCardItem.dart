import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/card_model.dart';
import 'package:loyality_card_wallet/app/modules/add_card/card_add_controller.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:loyality_card_wallet/app/utils/dimension.dart';
import 'package:loyality_card_wallet/app/widgets/big_text.dart';
import 'package:loyality_card_wallet/app/widgets/small_text.dart';

import '../utils/colors.dart';

class Giftcarditem extends StatelessWidget {
  final CardModel cardModel;
  final int index;
  const Giftcarditem({super.key, required this.cardModel,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RouteHelper.getCardAdd(),arguments:cardModel );
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
                height: Dimension.height10*10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: cardListGradients[index % 10],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimension.height10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            cardModel.image!,
                            width: Dimension.height10 * 7,
                            height: Dimension.height10 * 7,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: cardModel.title!,
                            size: Dimension.height10 * 2.5,
                          ),
                          SizedBox(height: Dimension.height10),
                          SmallText(
                            text: cardModel.cardType!,
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
            GetBuilder<CardAddController>(
              builder: (controller) {
                return cardModel.quantity!<1?SizedBox():Positioned(
                  top: 5,
                  right: 8,
                  child: Container(
                    height: Dimension.height10 * 2.5,
                    width: Dimension.height10 * 2.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red),
                  child:  Center(child: Text(cardModel.quantity!.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
