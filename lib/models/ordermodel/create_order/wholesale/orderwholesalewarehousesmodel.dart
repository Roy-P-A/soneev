import 'package:flutter/src/material/dropdown.dart';

class OrderWholesaleWarehousesModel {
  int? code;
  String? totalNoItems;
  List<Data2> data2;

  OrderWholesaleWarehousesModel(
      {this.code, this.totalNoItems, required this.data2});

  factory OrderWholesaleWarehousesModel.fromJson(Map<String, dynamic> json) =>
      OrderWholesaleWarehousesModel(
        code: json['code'],
        totalNoItems: json['Total_No_Items'],
        data2: List<Data2>.from(json['data'].map((x) => Data2.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'Total_No_Items': totalNoItems,
        'data': List<dynamic>.from(data2.map((x) => x.toJson())),
      };
}

class Data2 {
  String? warehouseId;
  String? warehouseName;
  String? contactNames;
  String? phone;
  String? fax;
  String? email;
  String? poFromEmail;
  String? poToAddresses;
  String? notes;
  String? warehouseDefaultAddressId;
  String? warehouseDefaultUserId;
  String? defaultShippingCarrierId;
  String? activeTaxCodeId;
  String? isDropshipper;
  String? isRetail;
  String? isWholesale;
  String? poNumberBase;
  String? formsDirectory;
  String? dropShipHandlerIdLive;
  String? autoSubmitPo;
  String? repNotification;
  String? sortOrder;
  String? isActive;

  Data2(
      {this.warehouseId,
      this.warehouseName,
      this.contactNames,
      this.phone,
      this.fax,
      this.email,
      this.poFromEmail,
      this.poToAddresses,
      this.notes,
      this.warehouseDefaultAddressId,
      this.warehouseDefaultUserId,
      this.defaultShippingCarrierId,
      this.activeTaxCodeId,
      this.isDropshipper,
      this.isRetail,
      this.isWholesale,
      this.poNumberBase,
      this.formsDirectory,
      this.dropShipHandlerIdLive,
      this.autoSubmitPo,
      this.repNotification,
      this.sortOrder,
      this.isActive});

  factory Data2.fromJson(Map<String, dynamic> json) => Data2(
        warehouseId: json['warehouse_id'],
        warehouseName: json['warehouse_name'],
        contactNames: json['contact_names'],
        phone: json['phone'],
        fax: json['fax'],
        email: json['email'],
        poFromEmail: json['po_from_email'],
        poToAddresses: json['po_to_addresses'],
        notes: json['notes'],
        warehouseDefaultAddressId: json['warehouse_default_address_id'],
        warehouseDefaultUserId: json['warehouse_default_user_id'],
        defaultShippingCarrierId: json['default_shipping_carrier_id'],
        activeTaxCodeId: json['active_tax_code_id'],
        isDropshipper: json['is_dropshipper'],
        isRetail: json['is_retail'],
        isWholesale: json['is_wholesale'],
        poNumberBase: json['po_number_base'],
        formsDirectory: json['forms_directory'],
        dropShipHandlerIdLive: json['drop_ship_handler_id_live'],
        autoSubmitPo: json['auto_submit_po'],
        repNotification: json['rep_notification'],
        sortOrder: json['sort_order'],
        isActive: json['is_active'],
      );

  Map<String, dynamic> toJson() => {
        'warehouse_id': warehouseId,
        'warehouse_name': warehouseName,
        'contact_names': contactNames,
        'phone': phone,
        'fax': fax,
        'email': email,
        'po_from_email': poFromEmail,
        'po_to_addresses': poToAddresses,
        'notes': notes,
        'warehouse_default_address_id': warehouseDefaultAddressId,
        'warehouse_default_user_id': warehouseDefaultUserId,
        'default_shipping_carrier_id': defaultShippingCarrierId,
        'active_tax_code_id': activeTaxCodeId,
        'is_dropshipper': isDropshipper,
        'is_retail': isRetail,
        'is_wholesale': isWholesale,
        'po_number_base': poNumberBase,
        'forms_directory': formsDirectory,
        'drop_ship_handler_id_live': dropShipHandlerIdLive,
        'auto_submit_po': autoSubmitPo,
        'rep_notification': repNotification,
        'sort_order': sortOrder,
        'is_active': isActive,
      };
}
