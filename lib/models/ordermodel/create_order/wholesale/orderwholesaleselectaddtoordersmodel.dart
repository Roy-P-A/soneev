class OrderWholesaleSelectAddToOrdersModel {
  int? code;
  int? noqty;
  Data7 data7;
  String? message;

  OrderWholesaleSelectAddToOrdersModel(
      {this.code, this.noqty, required this.data7, this.message});

  factory OrderWholesaleSelectAddToOrdersModel.fromJson(
          Map<String, dynamic> json) =>
      OrderWholesaleSelectAddToOrdersModel(
        code: json['code'],
        noqty: json['noqty'],
        data7: Data7.fromJson(json['data']),
        message: json['message'],
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'noqty': noqty,
        'data': data7.toJson(),
        'message': message,
      };
}

class Data7 {
  String? lineDsc;
  String? sku;
  String? value;
  String? qty;
  double? total;
  String? id;
  String? totalPreOrderlineId;
  String? preOrderlineId;
  String? productWareHouseId;
  String? lineNumber;

  Data7(
      {this.lineDsc,
      this.sku,
      this.value,
      this.qty,
      this.total,
      this.id,
      this.totalPreOrderlineId,
      this.preOrderlineId,
      this.productWareHouseId,
      this.lineNumber});

  factory Data7.fromJson(Map<String, dynamic> json) => Data7(
        lineDsc: json['line_dsc'],
        sku: json['sku'],
        value: json['value'],
        qty: json['qty'],
        total: json['total'],
        id: json['id'],
        totalPreOrderlineId: json['total_pre_orderline_id'],
        preOrderlineId: json['pre_orderline_id'],
        productWareHouseId: json['product_ware_house_id'],
        lineNumber: json['line_number'],
      );

  Map<String, dynamic> toJson() => {
        'line_dsc': lineDsc,
        'sku': sku,
        'value': value,
        'qty': qty,
        'total': total,
        'id': id,
        'total_pre_orderline_id': totalPreOrderlineId,
        'pre_orderline_id': preOrderlineId,
        'product_ware_house_id': productWareHouseId,
        'line_number': lineNumber,
      };
}
