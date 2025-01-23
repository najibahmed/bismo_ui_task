import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:loyality_card_wallet/app/utils/app_images.dart';

import '../../utils/dimension.dart';
import '../../widgets/big_text.dart';
import '../../widgets/link_button.dart';
import '../../widgets/small_text.dart';

class CardAddView extends StatelessWidget {
  CardAddView({super.key});

  TextEditingController _memberIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimension.width10 * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimension.height10 * 2),
              Container(
                height: Dimension.height10 * 10,
                width: Dimension.height10 * 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(AppImages.instance.starBucks),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: Dimension.height10 / 2),
              BigText(
                text: "StarBucks",
                size: Dimension.height10 * 2.65,
              ),
              SmallText(
                text: "Loyalty Card",
                size: Dimension.height10 * 1.5,
                color: Colors.black87,
              ),
              SizedBox(height: Dimension.height10 * 2),
              barCodeScanButton(),
              SizedBox(height: Dimension.height10 * 2),
              TextFormField(
                  controller: _memberIdController,
                  decoration: const InputDecoration(
                    labelText: "Member Id",
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black26, width: 2.0),
                    ),
                  )),
              SizedBox(height: Dimension.height10 * 2),
              textWithLink(),
              SizedBox(height: Dimension.height10 * 17),
              SizedBox(
                height: Dimension.height10*5,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(RouteHelper.getSuccessfulCardView());
                    },
                    style: ElevatedButton.styleFrom(),
                    child: Text("Add to Aamar Wallet")),
              )
            ],
          ),
        )),
      ),
    );
  }

  GestureDetector barCodeScanButton() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteHelper.getBarCodeScan());
      },
      child: Row(
        children: [
          Container(
            height: Dimension.height10 * 4,
            width: Dimension.height10 * 4,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.document_scanner_outlined),
          ),
          SizedBox(width: Dimension.width10 * 2),
          BigText(
            text: "Scan your Card",
            size: Dimension.height10 * 2.25,
          ),
        ],
      ),
    );
  }

  Row textWithLink() {
    return Row(
      children: [
        Expanded(
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'This includes terms and condition. ',
              style: TextStyle(
                  color: Colors.black54, fontSize: Dimension.height10 * 1.8),
              children: <InlineSpan>[
                WidgetSpan(
                  style: TextStyle(decoration: TextDecoration.underline),
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: LinkButton(
                      urlLabel: "This is link", url: "https://www.google.com"),
                ),
                TextSpan(
                  text: ' blah blah ',
                ),
                WidgetSpan(
                  style: TextStyle(decoration: TextDecoration.underline),
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: LinkButton(
                      urlLabel: "Another Link",
                      url: "https://www.bismoservices.com/"),
                ),
                TextSpan(
                  text: ' blah blah blah.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
