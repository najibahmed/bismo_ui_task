import 'package:barcode/barcode.dart' as br;
import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:mobile_scanner/mobile_scanner.dart';


class CardAddController extends GetxController{
  TextEditingController _memberIdController = TextEditingController();
  TextEditingController get memberIdController=>_memberIdController;
  final _barcode = br.Barcode.code128();
  Barcode? _scanBarcode;
  Barcode? get getScanBarCode=>_scanBarcode;
  String _scannedStringBarCode="No barcode scanned";
  bool _isScanning =true;
  bool get isScanning =>_isScanning;
  String get scannedBarCode=>_scannedStringBarCode;
  RxDouble zoomLevel = 0.4.obs;



  void resetBarCode(){
    _isScanning=true;
    _scannedStringBarCode="No barcode scanned";
    update();
  }
  void setControllerData(){
    _scannedStringBarCode=_memberIdController.text.toString();
    _memberIdController.clear();
    update();
  }

  void setScanBarCode(BarcodeCapture barcodes){
    _scanBarcode=barcodes.barcodes.firstOrNull;
    _isScanning=false;
   if(_scanBarcode?.displayValue!=null) {
     _scannedStringBarCode= _scanBarcode!.displayValue.toString();
      _memberIdController.text = _scanBarcode!.displayValue.toString();
    }
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

@override
  void onClose() {
    // TODO: implement onClose
    _memberIdController.dispose();
  }

}