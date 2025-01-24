import 'package:loyality_card_wallet/app/card_model.dart';
import 'package:loyality_card_wallet/app/utils/app_images.dart';

List<String> sliderCardImages = [
  AppImages.instance.creditCard1,
  AppImages.instance.creditCard2
];
//
// List<Map<String,dynamic>> houseList = [
//   {
//     ""
//   }
// ];



List<CardModel> couponListData = [
CardModel(
    id:1,
    title:"StarBucks",
    quantity: 1,
    image: AppImages.instance.starBucks,
    cardType: "Coupon Card",
    barcodeNo: 2025000101
),
  CardModel(
    id:2,
    title:"Taco Bell",
    quantity: 0,
    image: AppImages.instance.starBucks,
    cardType: "Offer Card",
    barcodeNo: 2025000102
),
  CardModel(
    id:3,
    title:"Dunkin Donuts",
    quantity: 1,
    image: AppImages.instance.starBucks,
    cardType: "Discount Card",
    barcodeNo: 2025000103
),

];
// {"id": "1", "title": " Starbucks", "quantity": 1,"image": "assetImage","card_type":"Coupon Card","barcode_no": 20250101},