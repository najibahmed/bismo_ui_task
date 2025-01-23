import 'package:barcode/barcode.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class CardAddController extends GetxController{
  final _barcode = Barcode.code128();


  String _scannedBarcode = "No barcode scanned";
  String get scannedBarCode=>_scannedBarcode;

  Future<void> scanBarcode() async {
    String scannedBarcode;
    try {
      scannedBarcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', // Scan line color
        'Cancel',  // Cancel button text
        true,      // Show the flash button
        ScanMode.BARCODE, // Scan mode
      );
    } catch (e) {
      scannedBarcode = 'Failed to get barcode';
    }

     return;

      _scannedBarcode = scannedBarcode;
      update();
  }

String generateBarCode(String barcodeData ){
  final svg = _barcode.toSvg(
    barcodeData,
    width: 300,
    height: 80,
  );
return svg;
}

}