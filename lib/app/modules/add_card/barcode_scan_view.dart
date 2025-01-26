import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/modules/add_card/card_add_controller.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../utils/dimension.dart';
import '../../widgets/big_text.dart';

class BarcodeScanView extends StatefulWidget {
  const BarcodeScanView({super.key});

  @override
  State<BarcodeScanView> createState() => _BarcodeScanViewState();
}

class _BarcodeScanViewState extends State<BarcodeScanView> {
  final MobileScannerController _controller = MobileScannerController();

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      Get.find<CardAddController>().setScanBarCode(barcodes);
      }
      final List<Barcode> codeBar = barcodes.barcodes;
      for (final barcode in codeBar) {
        debugPrint('Barcode found: ${barcode.rawValue}');
        if (barcode.rawValue != null) {
          _showBarcodeDialog(barcode.rawValue!);
        }
      }


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Center(
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: MobileScanner(
                      onDetect: _handleBarcode,

                    ),
                  ),
                ),
                SizedBox(height: Dimension.height10),
                BigText(text: "Place your BarCode Inside the Camera Window.",color: Colors.white,size: 14,),
                SizedBox(height: Dimension.height10 * 5),
                GetBuilder<CardAddController>(
                  builder: (controller) {
                    return  Text(
                      controller.scannedBarCode,
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.white),
                    );
                  }
                ),
                GetBuilder<CardAddController>(
                    builder: (controller) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(
                            '0%',
                            overflow: TextOverflow.fade,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          ),
                          Obx(()=> Expanded(
                            child: Slider(
                              max: 100,
                              divisions: 10,
                              label: controller.zoomLevel.value.round().toString(),
                                value: controller.zoomLevel.value,
                                onChanged: (value) {
                                  controller.zoomLevel.value = value;
                                  _controller.setZoomScale(value);
                                },
                              ),
                          ),
                          ),
                          Text(
                            '100%',
                            overflow: TextOverflow.fade,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  }
                ),
                SizedBox(height: Dimension.height10 * 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){
                      Get.back();
                    },
                        child: Text("Cancle",style: TextStyle(color: Colors.white,fontSize: Dimension.height10*2),)),
                    SizedBox(
                      height: Dimension.height10*4,
        
                      child: GetBuilder<CardAddController>(
                        builder: (controller) {
                          return ElevatedButton(
                              onPressed: () {
                                Get.back();
                                // Get.offNamed(RouteHelper.getCardAdd());
                              },
                              style: ElevatedButton.styleFrom(),
                              child: Text(controller.isScanning?"Enter Manually":"Submit"));
                        }
                      ),
                    )
        
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showBarcodeDialog(String barcode) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Barcode Detected'),
          content: Text(barcode),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
