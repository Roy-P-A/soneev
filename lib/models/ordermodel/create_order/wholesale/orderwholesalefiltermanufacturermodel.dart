class OrderWholesaleFilterManufacturerModel {
  int? code;
  String? totalItem;
  List<Data3> data3;

  OrderWholesaleFilterManufacturerModel(
      {this.code, this.totalItem, required this.data3});

  factory OrderWholesaleFilterManufacturerModel.fromJson(
          Map<String, dynamic> json) =>
      OrderWholesaleFilterManufacturerModel(
        code: json['code'],
        totalItem: json['total_item'],
        data3: List<Data3>.from(json['data'].map((x) => Data3.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'total_item': totalItem,
        'data': List<dynamic>.from(data3.map((x) => x.toJson())),
      };
}

class Data3 {
  String? manId;
  String? manName;

  Data3({this.manId, this.manName});

  factory Data3.fromJson(Map<String, dynamic> json) => Data3(
        manId: json['man_id'],
        manName: json['man_name'],
      );

  Map<String, dynamic> toJson() => {
        'man_id': manId,
        'man_name': manName,
      };
}
