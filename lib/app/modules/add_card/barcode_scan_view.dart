import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/dimension.dart';
import '../../widgets/big_text.dart';

class BarcodeScanView extends StatelessWidget {
  const BarcodeScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimension.width10 * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimension.height10 * 10),
              Container(
                height: Dimension.height10 * 8,
                width: Dimension.height10 * 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    ),
                child: Icon(Icons.document_scanner_sharp,color: Colors.white,size: Dimension.width10*5,),
              ),
              BigText(
                text: "Add a Card",
                size: Dimension.height10 * 2.65,
                color: Colors.white,
              ),
              SizedBox(height: Dimension.height10 * 3),
              Container(
                height: Dimension.height10 * 30,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white)
                ),
              ),
              SizedBox(height: Dimension.height10 * 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Get.back();
                  },
                      child: Text("Cancle",style: TextStyle(color: Colors.white,fontSize: Dimension.height10*2),)),
                  SizedBox(
                    height: Dimension.height10*4,

                    child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(),
                        child: Text("Enter Manually")),
                  )
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
