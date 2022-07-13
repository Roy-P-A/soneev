class OrderModel {
  int? code;
  String? totalNoItems;
  List<Data> data;

  OrderModel({this.code, this.totalNoItems, required this.data});

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        code: json['code'] ?? '',
        totalNoItems: json['Total_No_Items'] ?? '',
        data: List<Data>.from(json['data'].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'Total_No_Items': totalNoItems,
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Data {
  String? orderId;
  String? customerId;
  String? orderDt;
  String? modDt;
  String? dtComplete;
  String? ipAddress;
  String? total;
  String? balance;
  String? orderStatusId;
  String? isWholesale;
  String? resellerNumber;
  String? customerName;
  String? customerEmail;
  String? customerPhone;
  String? customerCompany;
  String? vlDeliveryStart;
  String? vlDeliveryEnd;
  String? isComplete;
  String? ownerUserId;
  String? specialInstructions;
  String? isBillAndHold;
  String? addToXero;
  String? xeroReferenceNumber;
  String? isDirectOrder;
  String? onlineOrderEntityId;
  Customer customer;
  List<OrderShipments> orderShipments;

  Data(
      {this.orderId,
      this.customerId,
      this.orderDt,
      this.modDt,
      this.dtComplete,
      this.ipAddress,
      this.total,
      this.balance,
      this.orderStatusId,
      this.isWholesale,
      this.resellerNumber,
      this.customerName,
      this.customerEmail,
      this.customerPhone,
      this.customerCompany,
      this.vlDeliveryStart,
      this.vlDeliveryEnd,
      this.isComplete,
      this.ownerUserId,
      this.specialInstructions,
      this.isBillAndHold,
      this.addToXero,
      this.xeroReferenceNumber,
      this.isDirectOrder,
      this.onlineOrderEntityId,
      required this.customer,
      required this.orderShipments});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
      orderId: json['order_id'],
      customerId: json['customer_id'],
      orderDt: json['order_dt'],
      modDt: json['mod_dt'],
      dtComplete: json['dt_complete'],
      ipAddress: json['ip_address'],
      total: json['total'],
      balance: json['balance'],
      orderStatusId: json['order_status_id'],
      isWholesale: json['is_wholesale'],
      resellerNumber: json['reseller_number'],
      customerName: json['customer_name'],
      customerEmail: json['customer_email'],
      customerPhone: json['customer_phone'],
      customerCompany: json['customer_company'],
      vlDeliveryStart: json['vl_delivery_start'],
      vlDeliveryEnd: json['vl_delivery_end'],
      isComplete: json['is_complete'],
      ownerUserId: json['owner_user_id'],
      specialInstructions: json['special_instructions'],
      isBillAndHold: json['is_bill_and_hold'],
      addToXero: json['add_to_xero'],
      xeroReferenceNumber: json['xero_reference_number'],
      isDirectOrder: json['is_direct_order'],
      onlineOrderEntityId: json['online_order_entity_id'],
      customer: Customer.fromJson(json['customer']),
      orderShipments: List<OrderShipments>.from(
          json['order_shipments'].map((x) => OrderShipments.fromJson(x))));

  Map<String, dynamic> toJson() => {
        'order_id': orderId,
        'customer_id': customerId,
        'order_dt': orderDt,
        'mod_dt': modDt,
        'dt_complete': dtComplete,
        'ip_address': ipAddress,
        'total': total,
        'balance': balance,
        'order_status_id': orderStatusId,
        'is_wholesale': isWholesale,
        'reseller_number': resellerNumber,
        'customer_name': customerName,
        'customer_email': customerEmail,
        'customer_phone': customerPhone,
        'customer_company': customerCompany,
        'vl_delivery_start': vlDeliveryStart,
        'vl_delivery_end': vlDeliveryEnd,
        'is_complete': isComplete,
        'owner_user_id': ownerUserId,
        'special_instructions': specialInstructions,
        'is_bill_and_hold': isBillAndHold,
        'add_to_xero': addToXero,
        'xero_reference_number': xeroReferenceNumber,
        'is_direct_order': isDirectOrder,
        'online_order_entity_id': onlineOrderEntityId,
      };
}

class Customer {
  String? customerId;
  String? title;
  String? fname;
  String? lname;
  String? companyName;
  String? customerType;
  String? contactNames;
  String? dob;
  String? email;
  String? password;
  dynamic customerActivationKey;
  String? acceptTa;
  String? phone;
  String? mobile;
  String? fax;
  String? defaultShippingAddressId;
  String? defaultBillingAddressId;
  String? defaultPaymentMethodId;
  String? defaultWarehouseId;
  String? optIn;
  String? isWholesale;
  String? isDistributor;
  String? isWebCustomer;
  String? resellerNumber;
  String? abcNumber;
  String? taxId;
  String? isRetail;
  String? contactAvailability;
  String? notes;
  String? balance;
  String? ownerUserId;
  String? dateCreated;
  String? creatorUserId;
  String? dateMod;
  String? modUserId;
  String? legacyId;
  String? legacyRetailId;
  String? vlDeliveryStart;
  String? vlDeliveryEnd;
  String? vlDeliveryGroupId;
  String? vlCarrierNumber;
  String? vlExportedDate;

  Customer(
      {this.customerId,
      this.title,
      this.fname,
      this.lname,
      this.companyName,
      this.customerType,
      this.contactNames,
      this.dob,
      this.email,
      this.password,
      this.customerActivationKey,
      this.acceptTa,
      this.phone,
      this.mobile,
      this.fax,
      this.defaultShippingAddressId,
      this.defaultBillingAddressId,
      this.defaultPaymentMethodId,
      this.defaultWarehouseId,
      this.optIn,
      this.isWholesale,
      this.isDistributor,
      this.isWebCustomer,
      this.resellerNumber,
      this.abcNumber,
      this.taxId,
      this.isRetail,
      this.contactAvailability,
      this.notes,
      this.balance,
      this.ownerUserId,
      this.dateCreated,
      this.creatorUserId,
      this.dateMod,
      this.modUserId,
      this.legacyId,
      this.legacyRetailId,
      this.vlDeliveryStart,
      this.vlDeliveryEnd,
      this.vlDeliveryGroupId,
      this.vlCarrierNumber,
      this.vlExportedDate});

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        customerId: json['customer_id'],
        title: json['title'],
        fname: json['fname'],
        lname: json['lname'],
        companyName: json['company_name'],
        customerType: json['customer_type'],
        contactNames: json['contact_names'],
        dob: json['dob'],
        email: json['email'],
        password: json['password'],
        customerActivationKey: json['customer_activation_key'],
        acceptTa: json['accept_ta'],
        phone: json['phone'],
        mobile: json['mobile'],
        fax: json['fax'],
        defaultShippingAddressId: json['default_shipping_address_id'],
        defaultBillingAddressId: json['default_billing_address_id'],
        defaultPaymentMethodId: json['default_payment_method_id'],
        defaultWarehouseId: json['default_warehouse_id'],
        optIn: json['opt_in'],
        isWholesale: json['is_wholesale'],
        isDistributor: json['is_distributor'],
        isWebCustomer: json['is_web_customer'],
        resellerNumber: json['reseller_number'],
        abcNumber: json['abc_number'],
        taxId: json['tax_id'],
        isRetail: json['is_retail'],
        contactAvailability: json['contact_availability'],
        notes: json['notes'],
        balance: json['balance'],
        ownerUserId: json['owner_user_id'],
        dateCreated: json['date_created'],
        creatorUserId: json['creator_user_id'],
        dateMod: json['date_mod'],
        modUserId: json['mod_user_id'],
        legacyId: json['legacy_id'],
        legacyRetailId: json['legacy_retail_id'],
        vlDeliveryStart: json['vl_delivery_start'],
        vlDeliveryEnd: json['vl_delivery_end'],
        vlDeliveryGroupId: json['vl_delivery_group_id'],
        vlCarrierNumber: json['vl_carrier_number'],
        vlExportedDate: json['vl_exported_date'],
      );

  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'title': title,
        'fname': fname,
        'lname': lname,
        'company_name': companyName,
        'customer_type': customerType,
        'contact_names': contactNames,
        'dob': dob,
        'email': email,
        'password': password,
        'customer_activation_key': customerActivationKey,
        'accept_ta': acceptTa,
        'phone': phone,
        'mobile': mobile,
        'fax': fax,
        'default_shipping_address_id': defaultShippingAddressId,
        'default_billing_address_id': defaultBillingAddressId,
        'default_payment_method_id': defaultPaymentMethodId,
        'default_warehouse_id': defaultWarehouseId,
        'opt_in': optIn,
        'is_wholesale': isWholesale,
        'is_distributor': isDistributor,
        'is_web_customer': isWebCustomer,
        'reseller_number': resellerNumber,
        'abc_number': abcNumber,
        'tax_id': taxId,
        'is_retail': isRetail,
        'contact_availability': contactAvailability,
        'notes': notes,
        'balance': balance,
        'owner_user_id': ownerUserId,
        'date_created': dateCreated,
        'creator_user_id': creatorUserId,
        'date_mod': dateMod,
        'mod_user_id': modUserId,
        'legacy_id': legacyId,
        'legacy_retail_id': legacyRetailId,
        'vl_delivery_start': vlDeliveryStart,
        'vl_delivery_end': vlDeliveryEnd,
        'vl_delivery_group_id': vlDeliveryGroupId,
        'vl_carrier_number': vlCarrierNumber,
        'vl_exported_date': vlExportedDate,
      };
}

class OrderShipments {
  String? orderShipmentId;
  String? orderShipmentStatusId;
  String? orderId;
  String? preOrderId;
  String? inventoryTransferId;
  String? warehouseId;
  String? orderLineIds;
  String? shippingCarrierId;
  String? shippingMethodId;
  String? shippingCost;
  String? productsCharged;
  String? shippingCharged;
  String? taxCodeDsc;
  String? taxRateDsc;
  String? taxCharged;
  String? totalWeight;
  String? totalVolume;
  String? volumeUnits;
  String? weightUnits;
  String? refShippingAddressId;
  String? shippingName;
  String? shippingCompany;
  String? shippingStreetAddress1;
  String? shippingStreetAddress2;
  String? shippingCity;
  String? shippingState;
  String? shippingCounty;
  String? shippingCountry;
  String? shippingZipCode;
  String? shippingSpecialInstructions;
  String? poNumber;
  String? requestedShipDate;
  String? requestedShipVia;
  String? isShipped;
  String? carrierNumber;
  String? dataSubmitted;
  String? shippingType;
  String? shippingLabel;
  String? trackingNumber;
  //ShipMentStatus shipMentStatus;
  WareHouseDetails wareHouseDetails;

  OrderShipments(
      {this.orderShipmentId,
      this.orderShipmentStatusId,
      this.orderId,
      this.preOrderId,
      this.inventoryTransferId,
      this.warehouseId,
      this.orderLineIds,
      this.shippingCarrierId,
      this.shippingMethodId,
      this.shippingCost,
      this.productsCharged,
      this.shippingCharged,
      this.taxCodeDsc,
      this.taxRateDsc,
      this.taxCharged,
      this.totalWeight,
      this.totalVolume,
      this.volumeUnits,
      this.weightUnits,
      this.refShippingAddressId,
      this.shippingName,
      this.shippingCompany,
      this.shippingStreetAddress1,
      this.shippingStreetAddress2,
      this.shippingCity,
      this.shippingState,
      this.shippingCounty,
      this.shippingCountry,
      this.shippingZipCode,
      this.shippingSpecialInstructions,
      this.poNumber,
      this.requestedShipDate,
      this.requestedShipVia,
      this.isShipped,
      this.carrierNumber,
      this.dataSubmitted,
      this.shippingType,
      this.shippingLabel,
      this.trackingNumber,
      //required this.shipMentStatus,
      required this.wareHouseDetails});

  factory OrderShipments.fromJson(Map<String, dynamic> json) => OrderShipments(
        orderShipmentId: json['order_shipment_id'],
        orderShipmentStatusId: json['order_shipment_status_id'],
        orderId: json['order_id'],
        preOrderId: json['pre_order_id'],
        inventoryTransferId: json['inventory_transfer_id'],
        warehouseId: json['warehouse_id'],
        orderLineIds: json['order_line_ids'],
        shippingCarrierId: json['shipping_carrier_id'],
        shippingMethodId: json['shipping_method_id'],
        shippingCost: json['shipping_cost'],
        productsCharged: json['products_charged'],
        shippingCharged: json['shipping_charged'],
        taxCodeDsc: json['tax_code_dsc'],
        taxRateDsc: json['tax_rate_dsc'],
        taxCharged: json['tax_charged'],
        totalWeight: json['total_weight'],
        totalVolume: json['total_volume'],
        volumeUnits: json['volume_units'],
        weightUnits: json['weight_units'],
        refShippingAddressId: json['ref_shipping_address_id'],
        shippingName: json['shipping_name'],
        shippingCompany: json['shipping_company'],
        shippingStreetAddress1: json['shipping_street_address_1'],
        shippingStreetAddress2: json['shipping_street_address_2'],
        shippingCity: json['shipping_city'],
        shippingState: json['shipping_state'],
        shippingCounty: json['shipping_county'],
        shippingCountry: json['shipping_country'],
        shippingZipCode: json['shipping_zip_code'],
        shippingSpecialInstructions: json['shipping_special_instructions'],
        poNumber: json['po_number'],
        requestedShipDate: json['requested_ship_date'],
        requestedShipVia: json['requested_ship_via'],
        isShipped: json['is_shipped'],
        carrierNumber: json['carrier_number'],
        dataSubmitted: json['data_submitted'],
        shippingType: json['shipping_type'],
        shippingLabel: json['shipping_label'],
        trackingNumber: json['tracking_number'],
        //shipMentStatus: ShipMentStatus.fromJson(json['shipMentStatus']),
        wareHouseDetails: WareHouseDetails.fromJson(json['wareHouseDetails']),
      );
}

// class ShipMentStatus {
//   String? orderShipmentStatusId;
//   String? warehouseId;
//   String? orderShipmentStatusName;
//   String? orderShipmentStatusDsc;
//   String? setOrderStatusId;
//   String? eventStatusRef;

//   ShipMentStatus(
//       {this.orderShipmentStatusId,
//       this.warehouseId,
//       this.orderShipmentStatusName,
//       this.orderShipmentStatusDsc,
//       this.setOrderStatusId,
//       this.eventStatusRef});

//   factory ShipMentStatus.fromJson(Map<String, dynamic> json) => ShipMentStatus(
//         orderShipmentStatusId: json['order_shipment_status_id'],
//         warehouseId: json['warehouse_id'],
//         orderShipmentStatusName: json['order_shipment_status_name'],
//         orderShipmentStatusDsc: json['order_shipment_status_dsc'],
//         setOrderStatusId: json['set_order_status_id'],
//         eventStatusRef: json['event_status_ref'],
//       );
// }

class WareHouseDetails {
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

  WareHouseDetails(
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

  factory WareHouseDetails.fromJson(Map<String, dynamic> json) =>
      WareHouseDetails(
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
}
