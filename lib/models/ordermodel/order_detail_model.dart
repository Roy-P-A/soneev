class OrderDetailModel {
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
  Customers customers;
  OrderStatus orderStatus;
  OrderPayment orderPayment;
  List<OrderStatusHistories> orderStatusHistories;
  List<OrderShipments> orderShipments;
  List<OrderLines> orderLines;

  OrderDetailModel(
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
      required this.customers,
      required this.orderStatus,
      required this.orderPayment,
      required this.orderStatusHistories,
      required this.orderShipments,
      required this.orderLines});

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      OrderDetailModel(
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
        customers: Customers.fromJson(json['customers']),
        orderStatus: OrderStatus.fromJson(json['orderStatus']),
        orderPayment: OrderPayment.fromJson(json['orderPayment']),
        orderStatusHistories: List<OrderStatusHistories>.from(
            json['orderStatusHistories']
                .map((x) => OrderStatusHistories.fromJson(x))),
        orderShipments: List<OrderShipments>.from(
            json['order_shipments'].map((x) => OrderShipments.fromJson(x))),
        orderLines: List<OrderLines>.from(
            json['order_lines'].map((x) => OrderLines.fromJson(x))),
      );

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
        'customers': customers.toJson(),
        'orderStatus': orderStatus.toJson(),
        'orderPayment': orderPayment.toJson(),
        'orderStatusHistories':
            List<dynamic>.from(orderStatusHistories.map((x) => x.toJson())),
        'order_shipments':
            List<dynamic>.from(orderShipments.map((x) => x.toJson())),
        'order_lines': List<dynamic>.from(orderLines.map((x) => x.toJson())),
      };
}

class Customers {
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
  BillingAddress billingAddress;
  BillingAddress shippingAddress;

  Customers(
      {this.customerId = "",
      this.title = "",
      this.fname = "",
      this.lname = "",
      this.companyName = "",
      this.customerType = "",
      this.contactNames = "",
      this.dob = "",
      this.email = "",
      this.password = "",
      this.customerActivationKey = "",
      this.acceptTa = "",
      this.phone = "",
      this.mobile = "",
      this.fax = "",
      this.defaultShippingAddressId = "",
      this.defaultBillingAddressId = "",
      this.defaultPaymentMethodId = "",
      this.defaultWarehouseId = "",
      this.optIn = "",
      this.isWholesale = "",
      this.isDistributor = "",
      this.isWebCustomer = "",
      this.resellerNumber = "",
      this.abcNumber = "",
      this.taxId = "",
      this.isRetail = "",
      this.contactAvailability = "",
      this.notes = "",
      this.balance = "",
      this.ownerUserId = "",
      this.dateCreated = "",
      this.creatorUserId = "",
      this.dateMod = "",
      this.modUserId = "",
      this.legacyId = "",
      this.legacyRetailId = "",
      this.vlDeliveryStart = "",
      this.vlDeliveryEnd = "",
      this.vlDeliveryGroupId = "",
      this.vlCarrierNumber = "",
      this.vlExportedDate = "",
      required this.billingAddress,
      required this.shippingAddress});

  factory Customers.fromJson(Map<String, dynamic> json) => Customers(
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
        billingAddress: BillingAddress.fromJson(json['billingAddress']),
        shippingAddress: BillingAddress.fromJson(json['shippingAddress']),
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
        'billingAddress': billingAddress.toJson(),
        'shippingAddress': shippingAddress.toJson(),
      };
}

class BillingAddress {
  String? addressBookId;
  String? customerId;
  String? title;
  String? fname;
  String? lname;
  String? streetAddress1;
  String? streetAddress2;
  String? companyName;
  String? city;
  String? state;
  String? zoneCode;
  String? countyId;
  String? zipCode;
  String? zoneId;
  String? countryId;
  String? legacyId;

  BillingAddress(
      {this.addressBookId,
      this.customerId,
      this.title,
      this.fname,
      this.lname,
      this.streetAddress1,
      this.streetAddress2,
      this.companyName,
      this.city,
      this.state,
      this.zoneCode,
      this.countyId,
      this.zipCode,
      this.zoneId,
      this.countryId,
      this.legacyId});

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
        addressBookId: json['address_book_id'],
        customerId: json['customer_id'],
        title: json['title'],
        fname: json['fname'],
        lname: json['lname'],
        streetAddress1: json['street_address_1'],
        streetAddress2: json['street_address_2'],
        companyName: json['company_name'],
        city: json['city'],
        state: json['state'],
        zoneCode: json['zone_code'],
        countyId: json['county_id'],
        zipCode: json['zip_code'],
        zoneId: json['zone_id'],
        countryId: json['country_id'],
        legacyId: json['legacy_id'],
      );

  Map<String, dynamic> toJson() => {
        'address_book_id': addressBookId,
        'customer_id': customerId,
        'title': title,
        'fname': fname,
        'lname': lname,
        'street_address_1': streetAddress1,
        'street_address_2': streetAddress2,
        'company_name': companyName,
        'city': city,
        'state': state,
        'zone_code': zoneCode,
        'county_id': countyId,
        'zip_code': zipCode,
        'zone_id': zoneId,
        'country_id': countryId,
        'legacy_id': legacyId,
      };
}

class OrderStatus {
  String? orderStatusId;
  String? orderStatusName;
  String? statusDisplayName;

  OrderStatus(
      {this.orderStatusId, this.orderStatusName, this.statusDisplayName});

  factory OrderStatus.fromJson(Map<String, dynamic> json) => OrderStatus(
        orderStatusId: json['order_status_id'],
        orderStatusName: json['order_status_name'],
        statusDisplayName: json['status_display_name'],
      );

  Map<String, dynamic> toJson() => {
        'order_status_id': orderStatusId,
        'order_status_name': orderStatusName,
        'status_display_name': statusDisplayName,
      };
}

class OrderPayment {
  String? orderPaymentId;
  String? orderId;
  String? preOrderId;
  String? paymentMethodId;
  String? orderPaymentStatusId;
  String? amount;
  String? invoiceNumber;
  String? termsDsc;
  String? comments;
  String? dueDt;
  String? paymentDt;
  String? confirmationNumber;
  String? refBillingAddressId;
  String? billingName;
  String? billingCompany;
  String? billingStreetAddress1;
  String? billingStreetAddress2;
  String? billingCity;
  String? billingState;
  String? billingCounty;
  String? billingCountry;
  String? billingZipCode;
  String? paymentReceived;
  String? paymentLinkHash;
  String? paymentMethodName;

  OrderPayment(
      {this.orderPaymentId,
      this.orderId,
      this.preOrderId,
      this.paymentMethodId,
      this.orderPaymentStatusId,
      this.amount,
      this.invoiceNumber,
      this.termsDsc,
      this.comments,
      this.dueDt,
      this.paymentDt,
      this.confirmationNumber,
      this.refBillingAddressId,
      this.billingName,
      this.billingCompany,
      this.billingStreetAddress1,
      this.billingStreetAddress2,
      this.billingCity,
      this.billingState,
      this.billingCounty,
      this.billingCountry,
      this.billingZipCode,
      this.paymentReceived,
      this.paymentLinkHash,
      this.paymentMethodName});

  factory OrderPayment.fromJson(Map<String, dynamic> json) => OrderPayment(
        orderPaymentId: json['order_payment_id'],
        orderId: json['order_id'],
        preOrderId: json['pre_order_id'],
        paymentMethodId: json['payment_method_id'],
        orderPaymentStatusId: json['order_payment_status_id'],
        amount: json['amount'],
        invoiceNumber: json['invoice_number'],
        termsDsc: json['terms_dsc'],
        comments: json['comments'],
        dueDt: json['due_dt'],
        paymentDt: json['payment_dt'],
        confirmationNumber: json['confirmation_number'],
        refBillingAddressId: json['ref_billing_address_id'],
        billingName: json['billing_name'],
        billingCompany: json['billing_company'],
        billingStreetAddress1: json['billing_street_address_1'],
        billingStreetAddress2: json['billing_street_address_2'],
        billingCity: json['billing_city'],
        billingState: json['billing_state'],
        billingCounty: json['billing_county'],
        billingCountry: json['billing_country'],
        billingZipCode: json['billing_zip_code'],
        paymentReceived: json['payment_received'],
        paymentLinkHash: json['payment_link_hash'],
        paymentMethodName: json['payment_method_name'],
      );

  Map<String, dynamic> toJson() => {
        'order_payment_id': orderPaymentId,
        'order_id': orderId,
        'pre_order_id': preOrderId,
        'payment_method_id': paymentMethodId,
        'order_payment_status_id': orderPaymentStatusId,
        'amount': amount,
        'invoice_number': invoiceNumber,
        'terms_dsc': termsDsc,
        'comments': comments,
        'due_dt': dueDt,
        'payment_dt': paymentDt,
        'confirmation_number': confirmationNumber,
        'ref_billing_address_id': refBillingAddressId,
        'billing_name': billingName,
        'billing_company': billingCompany,
        'billing_street_address_1': billingStreetAddress1,
        'billing_street_address_2': billingStreetAddress2,
        'billing_city': billingCity,
        'billing_state': billingState,
        'billing_county': billingCounty,
        'billing_country': billingCountry,
        'billing_zip_code': billingZipCode,
        'payment_received': paymentReceived,
        'payment_link_hash': paymentLinkHash,
        'payment_method_name': paymentMethodName,
      };
}

class OrderStatusHistories {
  String? oshId;
  String? orderId;
  String? dt;
  String? comment;
  String? orderStatusId;
  OrderStatus orderStatus;

  OrderStatusHistories(
      {this.oshId,
      this.orderId,
      this.dt,
      this.comment,
      this.orderStatusId,
      required this.orderStatus});

  factory OrderStatusHistories.fromJson(Map<String, dynamic> json) =>
      OrderStatusHistories(
        oshId: json['osh_id'],
        orderId: json['order_id'],
        dt: json['dt'],
        comment: json['comment'],
        orderStatusId: json['order_status_id'],
        orderStatus: OrderStatus.fromJson(json['orderStatus']),
      );

  Map<String, dynamic> toJson() => {
        'osh_id': oshId,
        'order_id': orderId,
        'dt': dt,
        'comment': comment,
        'order_status_id': orderStatusId,
        'orderStatus': orderStatus.toJson(),
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
  ShipMentStatus? shipMentStatus;
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
      this.shipMentStatus,
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
        shipMentStatus: json['shipMentStatus'] != null
            ? ShipMentStatus.fromJson(json['shipMentStatus'])
            : null,
        wareHouseDetails: WareHouseDetails.fromJson(json['wareHouseDetails']),
      );

  Map<String, dynamic> toJson() => {
        'order_shipment_id': orderShipmentId,
        'order_shipment_status_id': orderShipmentStatusId,
        'order_id': orderId,
        'pre_order_id': preOrderId,
        'inventory_transfer_id': inventoryTransferId,
        'warehouse_id': warehouseId,
        'order_line_ids': orderLineIds,
        'shipping_carrier_id': shippingCarrierId,
        'shipping_method_id': shippingMethodId,
        'shipping_cost': shippingCost,
        'products_charged': productsCharged,
        'shipping_charged': shippingCharged,
        'tax_code_dsc': taxCodeDsc,
        'tax_rate_dsc': taxRateDsc,
        'tax_charged': taxCharged,
        'total_weight': totalWeight,
        'total_volume': totalVolume,
        'volume_units': volumeUnits,
        'weight_units': weightUnits,
        'ref_shipping_address_id': refShippingAddressId,
        'shipping_name': shippingName,
        'shipping_company': shippingCompany,
        'shipping_street_address_1': shippingStreetAddress1,
        'shipping_street_address_2': shippingStreetAddress2,
        'shipping_city': shippingCity,
        'shipping_state': shippingState,
        'shipping_county': shippingCounty,
        'shipping_country': shippingCountry,
        'shipping_zip_code': shippingZipCode,
        'shipping_special_instructions': shippingSpecialInstructions,
        'po_number': poNumber,
        'requested_ship_date': requestedShipDate,
        'requested_ship_via': requestedShipVia,
        'is_shipped': isShipped,
        'carrier_number': carrierNumber,
        'data_submitted': dataSubmitted,
        'shipping_type': shippingType,
        'shipping_label': shippingLabel,
        'tracking_number': trackingNumber,
        'shipMentStatus': shipMentStatus!.toJson(),
        'wareHouseDetails': wareHouseDetails.toJson(),
      };
}

class ShipMentStatus {
  String? orderShipmentStatusId;
  String? warehouseId;
  String? orderShipmentStatusName;
  String? orderShipmentStatusDsc;
  String? setOrderStatusId;
  String? eventStatusRef;

  ShipMentStatus(
      {this.orderShipmentStatusId = " ",
      this.warehouseId = " ",
      this.orderShipmentStatusName = " ",
      this.orderShipmentStatusDsc = " ",
      this.setOrderStatusId = " ",
      this.eventStatusRef = " "});

  factory ShipMentStatus.fromJson(Map<String, dynamic> json) => ShipMentStatus(
        orderShipmentStatusId: json['order_shipment_status_id'],
        warehouseId: json['warehouse_id'],
        orderShipmentStatusName: json['order_shipment_status_name'],
        orderShipmentStatusDsc: json['order_shipment_status_dsc'],
        setOrderStatusId: json['set_order_status_id'],
        eventStatusRef: json['event_status_ref'],
      );

  Map<String, dynamic> toJson() => {
        'order_shipment_status_id': orderShipmentStatusId,
        'warehouse_id': warehouseId,
        'order_shipment_status_name': orderShipmentStatusName,
        'order_shipment_status_dsc': orderShipmentStatusDsc,
        'set_order_status_id': setOrderStatusId,
        'event_status_ref': eventStatusRef,
      };
}

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

class OrderLines {
  String? orderLineId;
  String? orderId;
  String? orderShipmentId;
  String? productId;
  String? discountId;
  String? shippingMethodId;
  String? taxRateId;
  String? adjustmentId;
  String? lineDsc;
  String? lineSku;
  String? lineValue;
  String? qty;
  String? lineTotal;
  String? parentId;
  String? sortOrder;
  String? internal;
  String? isSummary;
  String? priceType;
  Product? product;

  OrderLines(
      {this.orderLineId,
      this.orderId,
      this.orderShipmentId,
      this.productId,
      this.discountId,
      this.shippingMethodId,
      this.taxRateId,
      this.adjustmentId,
      this.lineDsc,
      this.lineSku,
      this.lineValue,
      this.qty,
      this.lineTotal,
      this.parentId,
      this.sortOrder,
      this.internal,
      this.isSummary,
      this.priceType,
      this.product});

  factory OrderLines.fromJson(Map<String, dynamic> json) => OrderLines(
      orderLineId: json['order_line_id'],
      orderId: json['order_id'],
      orderShipmentId: json['order_shipment_id'],
      productId: json['product_id'],
      discountId: json['discount_id'],
      shippingMethodId: json['shipping_method_id'],
      taxRateId: json['tax_rate_id'],
      adjustmentId: json['adjustment_id'],
      lineDsc: json['line_dsc'],
      lineSku: json['line_sku'],
      lineValue: json['line_value'],
      qty: json['qty'],
      lineTotal: json['line_total'],
      parentId: json['parent_id'],
      sortOrder: json['sort_order'],
      internal: json['internal'],
      isSummary: json['is_summary'],
      priceType: json['price_type'],
      product:
          json['product'] != null ? Product.fromJson(json['product']) : null);

  Map<String, dynamic> toJson() => {
        'order_line_id': orderLineId,
        'order_id': orderId,
        'order_shipment_id': orderShipmentId,
        'product_id': productId,
        'discount_id': discountId,
        'shipping_method_id': shippingMethodId,
        'tax_rate_id': taxRateId,
        'adjustment_id': adjustmentId,
        'line_dsc': lineDsc,
        'line_sku': lineSku,
        'line_value': lineValue,
        'qty': qty,
        'line_total': lineTotal,
        'parent_id': parentId,
        'sort_order': sortOrder,
        'internal': internal,
        'is_summary': isSummary,
        'price_type': priceType,
        'product': product!.toJson(),
      };
}

class Product {
  String? id;
  String? manufacturerId;
  String? sku;
  String? manufacturerSku;
  String? cola;
  String? bidcola;
  String? name;
  String? slug;
  String? priceSuggested;
  String? directImportPrice;
  String? diPrice;
  String? wholesalePrice;
  String? wholesalePriceSuggested;
  String? distributorPrice;
  String? distributorPriceSuggested;
  String? onHand;
  String? defaultRetailWarehouseId;
  String? defaultWholesaleWarehouseId;
  String? defaultTaxCodeId;
  String? weight;
  String? isBundle;
  String? itemsPerUnit;
  String? itemsPerCase;
  String? dateAvailable;
  String? isNew;
  String? dateCreated;
  String? modDt;
  String? inventoryStatus;
  String? productTypeId;
  String? isRetail;
  String? isWholesale;
  String? isDistributor;
  String? salesTargetOverwrite;
  String? specialSalesPercentage;
  String? excludedFromSalesVolume;
  String? isArchived;
  String? shopifyProductId;
  String? price;
  String? editStatus;

  Product(
      {this.id,
      this.manufacturerId,
      this.sku,
      this.manufacturerSku,
      this.cola,
      this.bidcola,
      this.name,
      this.slug,
      this.priceSuggested,
      this.directImportPrice,
      this.diPrice,
      this.wholesalePrice,
      this.wholesalePriceSuggested,
      this.distributorPrice,
      this.distributorPriceSuggested,
      this.onHand,
      this.defaultRetailWarehouseId,
      this.defaultWholesaleWarehouseId,
      this.defaultTaxCodeId,
      this.weight,
      this.isBundle,
      this.itemsPerUnit,
      this.itemsPerCase,
      this.dateAvailable,
      this.isNew,
      this.dateCreated,
      this.modDt,
      this.inventoryStatus,
      this.productTypeId,
      this.isRetail,
      this.isWholesale,
      this.isDistributor,
      this.salesTargetOverwrite,
      this.specialSalesPercentage,
      this.excludedFromSalesVolume,
      this.isArchived,
      this.shopifyProductId,
      this.price,
      this.editStatus});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        manufacturerId: json['manufacturer_id'],
        sku: json['sku'],
        manufacturerSku: json['manufacturer_sku'],
        cola: json['cola'],
        bidcola: json['bidcola'],
        name: json['name'],
        slug: json['slug'],
        priceSuggested: json['price_suggested'],
        directImportPrice: json['direct_import_price'],
        diPrice: json['di_price'],
        wholesalePrice: json['wholesale_price'],
        wholesalePriceSuggested: json['wholesale_price_suggested'],
        distributorPrice: json['distributor_price'],
        distributorPriceSuggested: json['distributor_price_suggested'],
        onHand: json['on_hand'],
        defaultRetailWarehouseId: json['default_retail_warehouse_id'],
        defaultWholesaleWarehouseId: json['default_wholesale_warehouse_id'],
        defaultTaxCodeId: json['default_tax_code_id'],
        weight: json['weight'],
        isBundle: json['is_bundle'],
        itemsPerUnit: json['items_per_unit'],
        itemsPerCase: json['items_per_case'],
        dateAvailable: json['date_available'],
        isNew: json['is_new'],
        dateCreated: json['date_created'],
        modDt: json['mod_dt'],
        inventoryStatus: json['inventory_status'],
        productTypeId: json['product_type_id'],
        isRetail: json['is_retail'],
        isWholesale: json['is_wholesale'],
        isDistributor: json['is_distributor'],
        salesTargetOverwrite: json['sales_target_overwrite'],
        specialSalesPercentage: json['special_sales_percentage'],
        excludedFromSalesVolume: json['excluded_from_sales_volume'],
        isArchived: json['is_archived'],
        shopifyProductId: json['shopify_product_id'],
        price: json['price'],
        editStatus: json['edit_status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'manufacturer_id': manufacturerId,
        'sku': sku,
        'manufacturer_sku': manufacturerSku,
        'cola': cola,
        'bidcola': bidcola,
        'name': name,
        'slug': slug,
        'price_suggested': priceSuggested,
        'direct_import_price': directImportPrice,
        'di_price': diPrice,
        'wholesale_price': wholesalePrice,
        'wholesale_price_suggested': wholesalePriceSuggested,
        'distributor_price': distributorPrice,
        'distributor_price_suggested': distributorPriceSuggested,
        'on_hand': onHand,
        'default_retail_warehouse_id': defaultRetailWarehouseId,
        'default_wholesale_warehouse_id': defaultWholesaleWarehouseId,
        'default_tax_code_id': defaultTaxCodeId,
        'weight': weight,
        'is_bundle': isBundle,
        'items_per_unit': itemsPerUnit,
        'items_per_case': itemsPerCase,
        'date_available': dateAvailable,
        'is_new': isNew,
        'date_created': dateCreated,
        'mod_dt': modDt,
        'inventory_status': inventoryStatus,
        'product_type_id': productTypeId,
        'is_retail': isRetail,
        'is_wholesale': isWholesale,
        'is_distributor': isDistributor,
        'sales_target_overwrite': salesTargetOverwrite,
        'special_sales_percentage': specialSalesPercentage,
        'excluded_from_sales_volume': excludedFromSalesVolume,
        'is_archived': isArchived,
        'shopify_product_id': shopifyProductId,
        'price': price,
        'edit_status': editStatus,
      };
}
