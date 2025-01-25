import 'package:loyality_card_wallet/app/models/card_model.dart';
import 'package:loyality_card_wallet/app/utils/app_images.dart';

List<String> sliderCardImages = [
  AppImages.instance.creditCard1,
  AppImages.instance.creditCard2
];
//
List<Map<String, dynamic>> cardJsonItems = [
  {
    "id": 1,
    "title": "Starbucks",
    "quantity": 1,
    "image": "assets/images/starbucks.png",
    "card_type": "Coupon Card",
    "barcode_no": 2025000101
  },
  {
    "id": 2,
    "title": "Taco Bell",
    "quantity": 0,
    "image": "assets/images/taco_bell.png",
    "card_type": "Discount Card",
    "barcode_no": 2025000102
  },
  {
    "id": 3,
    "title": "Mc Donald's",
    "quantity": 2,
    "image": "assets/images/mc_donalds.png",
    "card_type": "Gift Card",
    "barcode_no": 2025000103
  },{
    "id": 4,
    "title": "Dunkin Donut's",
    "quantity": 1,
    "image": "assets/images/dunkin_donuts.png",
    "card_type": "Coupon Card",
    "barcode_no": 2025000104
  },{
    "id": 5,
    "title": "Five Guys",
    "quantity": 0,
    "image": "assets/images/five_guys.png",
    "card_type": "Discount Card",
    "barcode_no": 2025000105
  },{
    "id": 6,
    "title": "Subway",
    "quantity": 1,
    "image": "assets/images/subway.png",
    "card_type": "Coupon Card",
    "barcode_no": 2025000106
  },{
    "id": 7,
    "title": "In N Out",
    "quantity": 0,
    "image": "assets/images/in_n_out.png",
    "card_type": "Coupon Card",
    "barcode_no": 2025000107
  },{
    "id": 8,
    "title": "Chick Filia",
    "quantity": 0,
    "image": "assets/images/chick_filia.png",
    "card_type": "Coupon Card",
    "barcode_no": 2025000108
  },{
    "id": 9,
    "title": "Burger King",
    "quantity": 3,
    "image": "assets/images/burger_king.png",
    "card_type": "Coupon Card",
    "barcode_no":2025000109
  },
];

// List<CardModel> couponListData = [
//   CardModel(
//       id: 1,
//       title: "StarBucks",
//       quantity: 1,
//       image: AppImages.instance.starBucks,
//       cardType: "Coupon Card",
//       barcodeNo: 2025000101),
//   CardModel(
//       id: 2,
//       title: "Taco Bell",
//       quantity: 0,
//       image: AppImages.instance.starBucks,
//       cardType: "Offer Card",
//       barcodeNo: 2025000102),
//   CardModel(
//       id: 3,
//       title: "Dunkin Donuts",
//       quantity: 1,
//       image: AppImages.instance.starBucks,
//       cardType: "Discount Card",
//       barcodeNo: 2025000103),
// ];
// {"id": "1", "title": " Starbucks", "quantity": 1,"image": "assetImage","card_type":"Coupon Card","barcode_no": 20250101},
