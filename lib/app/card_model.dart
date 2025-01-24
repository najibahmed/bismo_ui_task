/// id : "1"
/// title : "StarBucks"
/// quantity : 1
/// image : "assetImage"
/// card_type : "Coupon Card"
/// barcode_no : 20250101

class CardModel {
  CardModel({
      int? id,
      String? title, 
      num? quantity, 
      String? image, 
      String? cardType, 
      num? barcodeNo,}){
    _id = id;
    _title = title;
    _quantity = quantity;
    _image = image;
    _cardType = cardType;
    _barcodeNo = barcodeNo;
}

  CardModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _quantity = json['quantity'];
    _image = json['image'];
    _cardType = json['card_type'];
    _barcodeNo = json['barcode_no'];
  }
  int? _id;
  String? _title;
  num? _quantity;
  String? _image;
  String? _cardType;
  num? _barcodeNo;
CardModel copyWith({  int? id,
  String? title,
  num? quantity,
  String? image,
  String? cardType,
  num? barcodeNo,
}) => CardModel(  id: id ?? _id,
  title: title ?? _title,
  quantity: quantity ?? _quantity,
  image: image ?? _image,
  cardType: cardType ?? _cardType,
  barcodeNo: barcodeNo ?? _barcodeNo,
);
  int? get id => _id;
  String? get title => _title;
  num? get quantity => _quantity;
  String? get image => _image;
  String? get cardType => _cardType;
  num? get barcodeNo => _barcodeNo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['quantity'] = _quantity;
    map['image'] = _image;
    map['card_type'] = _cardType;
    map['barcode_no'] = _barcodeNo;
    return map;
  }

}