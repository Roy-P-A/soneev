class OrderWholesaleFilterProductModel {
  int? code;
  Data4 data4;

  OrderWholesaleFilterProductModel({this.code, required this.data4});

  factory OrderWholesaleFilterProductModel.fromJson(
          Map<String, dynamic> json) =>
      OrderWholesaleFilterProductModel(
        code: json['code'],
        data4: Data4.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'data': data4.toJson(),
      };
}

class Data4 {
  int? code;
  String? totalItem;
  List<Data5> data5;

  Data4({this.code, this.totalItem, required this.data5});

  factory Data4.fromJson(Map<String, dynamic> json) => Data4(
        code: json['code'],
        data5: List<Data5>.from(json['data'].map((x) => Data5.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'total_item': totalItem,
        'data': List<dynamic>.from(data5.map((x) => x.toJson())),
      };
}

class Data5 {
  String? id;
  String? name;
  String? price;
  String? wholesalePrice;
  String? onHand;
  String? resCs;
  String? reservations;
  String? onHandCs;
  String? manName;
  String? isDropshipper;
  String? isBundle;

  Data5(
      {this.id,
      this.name,
      this.price,
      this.wholesalePrice,
      this.onHand,
      this.resCs,
      this.reservations,
      this.onHandCs,
      this.manName,
      this.isDropshipper,
      this.isBundle});

  factory Data5.fromJson(Map<String, dynamic> json) => Data5(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        wholesalePrice: json['wholesale_price'],
        onHand: json['on_hand'],
        resCs: json['res_cs'],
        reservations: json['reservations'],
        onHandCs: json['on_hand_cs'],
        manName: json['man_name'],
        isDropshipper: json['is_dropshipper'],
        isBundle: json['is_bundle'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'wholesale_price': wholesalePrice,
        'on_hand': onHand,
        'res_cs': resCs,
        'reservations': reservations,
        'on_hand_cs': onHandCs,
        'man_name': manName,
        'is_dropshipper': isDropshipper,
        'is_bundle': isBundle,
      };
}
