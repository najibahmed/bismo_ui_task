import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/models/card_model.dart';
import 'package:loyality_card_wallet/app/modules/add_card/card_add_controller.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:loyality_card_wallet/app/utils/app_images.dart';
import 'package:loyality_card_wallet/app/utils/colors.dart';
import 'package:loyality_card_wallet/app/widgets/small_text.dart';

import '../../utils/dimension.dart';
import '../../widgets/big_text.dart';

class SuccessfulCardAddView extends StatelessWidget {
  const SuccessfulCardAddView({super.key});

  @override
  Widget build(BuildContext context) {
    final CardModel cardModel= Get.arguments;
    return  Scaffold(
      backgroundColor: AppColor.greenBackground,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.width10 * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Get.offNamed(RouteHelper.getCardAdd(),arguments: cardModel);
                    },
                        icon: Icon(Icons.arrow_back,
                          color: Colors.white,
                          size: Dimension.height10*3,)),
                    IconButton(onPressed: (){

                    },
                        icon: Icon(Icons.more_vert,
                          color: Colors.white,
                          size: Dimension.height10*3,)),
                  ],
                ),
                SizedBox(height: Dimension.height10 * 6),
                Container(
                  height: Dimension.height10 * 8,
                  width: Dimension.height10 * 8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.check,color: Colors.white,size: Dimension.width10*5,),
                ),
                SmallText(
                  text: "Done",
                  size: Dimension.height10 * 2.65,
                  color: Colors.white,
                ),
                SizedBox(height: Dimension.height10 * 3),
                Container(
                  height: Dimension.barCodeContainerHeight,
                  width:Dimension.barCodeContainerWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                  ),
                  child: GetBuilder<CardAddController>(
                    builder: (controller) {
                      return Center(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: Dimension.width10*24,
                                height: 100,
                                child: SvgPicture.string(
                                  controller.generateBarCode(controller.scannedBarCode),
                                  fit: BoxFit.fitWidth,
                                ), // Display SVG barcode
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            width: Dimension.height10 * 5,
                            height: Dimension.height10 * 5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: Dimension.width10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: cardModel.title!,
                          size: Dimension.height10 * 1.5,
                          color: Colors.white,
                        ),
                        SizedBox(height:4),
                        SmallText(
                          text: cardModel.cardType!,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimension.height10 * 15),
                SizedBox(
                  height: Dimension.height10*5,
                  width: Dimension.width10*20,
                  child: ElevatedButton(
                      onPressed: () {
                        // Get.back();
                        // Get.offNamed(RouteHelper.initial);
                      },
                      style: ElevatedButton.styleFrom(),
                      child: const Text("Continue")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
