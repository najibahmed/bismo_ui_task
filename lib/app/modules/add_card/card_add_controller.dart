import 'package:barcode/barcode.dart';
import 'package:get/get.dart';

class CardAddController extends GetxController{
  final _barcode = Barcode.code128();

String generateBarCode(String barcodeData ){
  final svg = _barcode.toSvg(
    barcodeData,
    width: 300,
    height: 80,
  );
return svg;
}

}