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
  Customers? customers;
  OrderStatus? orderStatus;
  OrderPayment? orderPayment;
  List<OrderStatusHistories>? orderStatusHistories;
  List<OrderShipments>? orderShipments;
  List<OrderLines>? orderLines;

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
      this.customers,
      this.orderStatus,
      this.orderPayment,
      this.orderStatusHistories,
      this.orderShipments,
      this.orderLines});

  OrderDetailModel.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    customerId = json['customer_id'];
    orderDt = json['order_dt'];
    modDt = json['mod_dt'];
    dtComplete = json['dt_complete'];
    ipAddress = json['ip_address'];
    total = json['total'];
    balance = json['balance'];
    orderStatusId = json['order_status_id'];
    isWholesale = json['is_wholesale'];
    resellerNumber = json['reseller_number'];
    customerName = json['customer_name'];
    customerEmail = json['customer_email'];
    customerPhone = json['customer_phone'];
    customerCompany = json['customer_company'];
    vlDeliveryStart = json['vl_delivery_start'];
    vlDeliveryEnd = json['vl_delivery_end'];
    isComplete = json['is_complete'];
    ownerUserId = json['owner_user_id'];
    specialInstructions = json['special_instructions'];
    isBillAndHold = json['is_bill_and_hold'];
    addToXero = json['add_to_xero'];
    xeroReferenceNumber = json['xero_reference_number'];
    isDirectOrder = json['is_direct_order'];
    onlineOrderEntityId = json['online_order_entity_id'];
    customers = json['customers'] != null
        ? new Customers.fromJson(json['customers'])
        : null;
    orderStatus = json['orderStatus'] != null
        ? new OrderStatus.fromJson(json['orderStatus'])
        : null;
    orderPayment = json['orderPayment'] != null
        ? new OrderPayment.fromJson(json['orderPayment'])
        : null;
    if (json['orderStatusHistories'] != null) {
      orderStatusHistories = <OrderStatusHistories>[];
      json['orderStatusHistories'].forEach((v) {
        orderStatusHistories!.add(new OrderStatusHistories.fromJson(v));
      });
    }
    if (json['order_shipments'] != null) {
      orderShipments = <OrderShipments>[];
      json['order_shipments'].forEach((v) {
        orderShipments!.add(new OrderShipments.fromJson(v));
      });
    }
    if (json['order_lines'] != null) {
      orderLines = <OrderLines>[];
      json['order_lines'].forEach((v) {
        orderLines!.add(new OrderLines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['customer_id'] = this.customerId;
    data['order_dt'] = this.orderDt;
    data['mod_dt'] = this.modDt;
    data['dt_complete'] = this.dtComplete;
    data['ip_address'] = this.ipAddress;
    data['total'] = this.total;
    data['balance'] = this.balance;
    data['order_status_id'] = this.orderStatusId;
    data['is_wholesale'] = this.isWholesale;
    data['reseller_number'] = this.resellerNumber;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_phone'] = this.customerPhone;
    data['customer_company'] = this.customerCompany;
    data['vl_delivery_start'] = this.vlDeliveryStart;
    data['vl_delivery_end'] = this.vlDeliveryEnd;
    data['is_complete'] = this.isComplete;
    data['owner_user_id'] = this.ownerUserId;
    data['special_instructions'] = this.specialInstructions;
    data['is_bill_and_hold'] = this.isBillAndHold;
    data['add_to_xero'] = this.addToXero;
    data['xero_reference_number'] = this.xeroReferenceNumber;
    data['is_direct_order'] = this.isDirectOrder;
    data['online_order_entity_id'] = this.onlineOrderEntityId;
    if (this.customers != null) {
      data['customers'] = this.customers!.toJson();
    }
    if (this.orderStatus != null) {
      data['orderStatus'] = this.orderStatus!.toJson();
    }
    if (this.orderPayment != null) {
      data['orderPayment'] = this.orderPayment!.toJson();
    }
    if (this.orderStatusHistories != null) {
      data['orderStatusHistories'] =
          this.orderStatusHistories!.map((v) => v.toJson()).toList();
    }
    if (this.orderShipments != null) {
      data['order_shipments'] =
          this.orderShipments!.map((v) => v.toJson()).toList();
    }
    if (this.orderLines != null) {
      data['order_lines'] = this.orderLines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
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
  Null? customerActivationKey;
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
  BillingAddress? billingAddress;
  BillingAddress? shippingAddress;

  Customers(
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
      this.vlExportedDate,
      this.billingAddress,
      this.shippingAddress});

  Customers.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    title = json['title'];
    fname = json['fname'];
    lname = json['lname'];
    companyName = json['company_name'];
    customerType = json['customer_type'];
    contactNames = json['contact_names'];
    dob = json['dob'];
    email = json['email'];
    password = json['password'];
    customerActivationKey = json['customer_activation_key'];
    acceptTa = json['accept_ta'];
    phone = json['phone'];
    mobile = json['mobile'];
    fax = json['fax'];
    defaultShippingAddressId = json['default_shipping_address_id'];
    defaultBillingAddressId = json['default_billing_address_id'];
    defaultPaymentMethodId = json['default_payment_method_id'];
    defaultWarehouseId = json['default_warehouse_id'];
    optIn = json['opt_in'];
    isWholesale = json['is_wholesale'];
    isDistributor = json['is_distributor'];
    isWebCustomer = json['is_web_customer'];
    resellerNumber = json['reseller_number'];
    abcNumber = json['abc_number'];
    taxId = json['tax_id'];
    isRetail = json['is_retail'];
    contactAvailability = json['contact_availability'];
    notes = json['notes'];
    balance = json['balance'];
    ownerUserId = json['owner_user_id'];
    dateCreated = json['date_created'];
    creatorUserId = json['creator_user_id'];
    dateMod = json['date_mod'];
    modUserId = json['mod_user_id'];
    legacyId = json['legacy_id'];
    legacyRetailId = json['legacy_retail_id'];
    vlDeliveryStart = json['vl_delivery_start'];
    vlDeliveryEnd = json['vl_delivery_end'];
    vlDeliveryGroupId = json['vl_delivery_group_id'];
    vlCarrierNumber = json['vl_carrier_number'];
    vlExportedDate = json['vl_exported_date'];
    billingAddress = json['billingAddress'] != null
        ? new BillingAddress.fromJson(json['billingAddress'])
        : null;
    shippingAddress = json['shippingAddress'] != null
        ? new BillingAddress.fromJson(json['shippingAddress'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['title'] = this.title;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['company_name'] = this.companyName;
    data['customer_type'] = this.customerType;
    data['contact_names'] = this.contactNames;
    data['dob'] = this.dob;
    data['email'] = this.email;
    data['password'] = this.password;
    data['customer_activation_key'] = this.customerActivationKey;
    data['accept_ta'] = this.acceptTa;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['fax'] = this.fax;
    data['default_shipping_address_id'] = this.defaultShippingAddressId;
    data['default_billing_address_id'] = this.defaultBillingAddressId;
    data['default_payment_method_id'] = this.defaultPaymentMethodId;
    data['default_warehouse_id'] = this.defaultWarehouseId;
    data['opt_in'] = this.optIn;
    data['is_wholesale'] = this.isWholesale;
    data['is_distributor'] = this.isDistributor;
    data['is_web_customer'] = this.isWebCustomer;
    data['reseller_number'] = this.resellerNumber;
    data['abc_number'] = this.abcNumber;
    data['tax_id'] = this.taxId;
    data['is_retail'] = this.isRetail;
    data['contact_availability'] = this.contactAvailability;
    data['notes'] = this.notes;
    data['balance'] = this.balance;
    data['owner_user_id'] = this.ownerUserId;
    data['date_created'] = this.dateCreated;
    data['creator_user_id'] = this.creatorUserId;
    data['date_mod'] = this.dateMod;
    data['mod_user_id'] = this.modUserId;
    data['legacy_id'] = this.legacyId;
    data['legacy_retail_id'] = this.legacyRetailId;
    data['vl_delivery_start'] = this.vlDeliveryStart;
    data['vl_delivery_end'] = this.vlDeliveryEnd;
    data['vl_delivery_group_id'] = this.vlDeliveryGroupId;
    data['vl_carrier_number'] = this.vlCarrierNumber;
    data['vl_exported_date'] = this.vlExportedDate;
    if (this.billingAddress != null) {
      data['billingAddress'] = this.billingAddress!.toJson();
    }
    if (this.shippingAddress != null) {
      data['shippingAddress'] = this.shippingAddress!.toJson();
    }
    return data;
  }
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

  BillingAddress.fromJson(Map<String, dynamic> json) {
    addressBookId = json['address_book_id'];
    customerId = json['customer_id'];
    title = json['title'];
    fname = json['fname'];
    lname = json['lname'];
    streetAddress1 = json['street_address_1'];
    streetAddress2 = json['street_address_2'];
    companyName = json['company_name'];
    city = json['city'];
    state = json['state'];
    zoneCode = json['zone_code'];
    countyId = json['county_id'];
    zipCode = json['zip_code'];
    zoneId = json['zone_id'];
    countryId = json['country_id'];
    legacyId = json['legacy_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_book_id'] = this.addressBookId;
    data['customer_id'] = this.customerId;
    data['title'] = this.title;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['street_address_1'] = this.streetAddress1;
    data['street_address_2'] = this.streetAddress2;
    data['company_name'] = this.companyName;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zone_code'] = this.zoneCode;
    data['county_id'] = this.countyId;
    data['zip_code'] = this.zipCode;
    data['zone_id'] = this.zoneId;
    data['country_id'] = this.countryId;
    data['legacy_id'] = this.legacyId;
    return data;
  }
}

class OrderStatus {
  String? orderStatusId;
  String? orderStatusName;
  String? statusDisplayName;

  OrderStatus(
      {this.orderStatusId, this.orderStatusName, this.statusDisplayName});

  OrderStatus.fromJson(Map<String, dynamic> json) {
    orderStatusId = json['order_status_id'];
    orderStatusName = json['order_status_name'];
    statusDisplayName = json['status_display_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_status_id'] = this.orderStatusId;
    data['order_status_name'] = this.orderStatusName;
    data['status_display_name'] = this.statusDisplayName;
    return data;
  }
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

  OrderPayment.fromJson(Map<String, dynamic> json) {
    orderPaymentId = json['order_payment_id'];
    orderId = json['order_id'];
    preOrderId = json['pre_order_id'];
    paymentMethodId = json['payment_method_id'];
    orderPaymentStatusId = json['order_payment_status_id'];
    amount = json['amount'];
    invoiceNumber = json['invoice_number'];
    termsDsc = json['terms_dsc'];
    comments = json['comments'];
    dueDt = json['due_dt'];
    paymentDt = json['payment_dt'];
    confirmationNumber = json['confirmation_number'];
    refBillingAddressId = json['ref_billing_address_id'];
    billingName = json['billing_name'];
    billingCompany = json['billing_company'];
    billingStreetAddress1 = json['billing_street_address_1'];
    billingStreetAddress2 = json['billing_street_address_2'];
    billingCity = json['billing_city'];
    billingState = json['billing_state'];
    billingCounty = json['billing_county'];
    billingCountry = json['billing_country'];
    billingZipCode = json['billing_zip_code'];
    paymentReceived = json['payment_received'];
    paymentLinkHash = json['payment_link_hash'];
    paymentMethodName = json['payment_method_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_payment_id'] = this.orderPaymentId;
    data['order_id'] = this.orderId;
    data['pre_order_id'] = this.preOrderId;
    data['payment_method_id'] = this.paymentMethodId;
    data['order_payment_status_id'] = this.orderPaymentStatusId;
    data['amount'] = this.amount;
    data['invoice_number'] = this.invoiceNumber;
    data['terms_dsc'] = this.termsDsc;
    data['comments'] = this.comments;
    data['due_dt'] = this.dueDt;
    data['payment_dt'] = this.paymentDt;
    data['confirmation_number'] = this.confirmationNumber;
    data['ref_billing_address_id'] = this.refBillingAddressId;
    data['billing_name'] = this.billingName;
    data['billing_company'] = this.billingCompany;
    data['billing_street_address_1'] = this.billingStreetAddress1;
    data['billing_street_address_2'] = this.billingStreetAddress2;
    data['billing_city'] = this.billingCity;
    data['billing_state'] = this.billingState;
    data['billing_county'] = this.billingCounty;
    data['billing_country'] = this.billingCountry;
    data['billing_zip_code'] = this.billingZipCode;
    data['payment_received'] = this.paymentReceived;
    data['payment_link_hash'] = this.paymentLinkHash;
    data['payment_method_name'] = this.paymentMethodName;
    return data;
  }
}

class OrderStatusHistories {
  String? oshId;
  String? orderId;
  String? dt;
  String? comment;
  String? orderStatusId;
  OrderStatus? orderStatus;

  OrderStatusHistories(
      {this.oshId,
      this.orderId,
      this.dt,
      this.comment,
      this.orderStatusId,
      this.orderStatus});

  OrderStatusHistories.fromJson(Map<String, dynamic> json) {
    oshId = json['osh_id'];
    orderId = json['order_id'];
    dt = json['dt'];
    comment = json['comment'];
    orderStatusId = json['order_status_id'];
    orderStatus = json['orderStatus'] != null
        ? new OrderStatus.fromJson(json['orderStatus'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['osh_id'] = this.oshId;
    data['order_id'] = this.orderId;
    data['dt'] = this.dt;
    data['comment'] = this.comment;
    data['order_status_id'] = this.orderStatusId;
    if (this.orderStatus != null) {
      data['orderStatus'] = this.orderStatus!.toJson();
    }
    return data;
  }
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
  WareHouseDetails? wareHouseDetails;

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
      this.wareHouseDetails});

  OrderShipments.fromJson(Map<String, dynamic> json) {
    orderShipmentId = json['order_shipment_id'];
    orderShipmentStatusId = json['order_shipment_status_id'];
    orderId = json['order_id'];
    preOrderId = json['pre_order_id'];
    inventoryTransferId = json['inventory_transfer_id'];
    warehouseId = json['warehouse_id'];
    orderLineIds = json['order_line_ids'];
    shippingCarrierId = json['shipping_carrier_id'];
    shippingMethodId = json['shipping_method_id'];
    shippingCost = json['shipping_cost'];
    productsCharged = json['products_charged'];
    shippingCharged = json['shipping_charged'];
    taxCodeDsc = json['tax_code_dsc'];
    taxRateDsc = json['tax_rate_dsc'];
    taxCharged = json['tax_charged'];
    totalWeight = json['total_weight'];
    totalVolume = json['total_volume'];
    volumeUnits = json['volume_units'];
    weightUnits = json['weight_units'];
    refShippingAddressId = json['ref_shipping_address_id'];
    shippingName = json['shipping_name'];
    shippingCompany = json['shipping_company'];
    shippingStreetAddress1 = json['shipping_street_address_1'];
    shippingStreetAddress2 = json['shipping_street_address_2'];
    shippingCity = json['shipping_city'];
    shippingState = json['shipping_state'];
    shippingCounty = json['shipping_county'];
    shippingCountry = json['shipping_country'];
    shippingZipCode = json['shipping_zip_code'];
    shippingSpecialInstructions = json['shipping_special_instructions'];
    poNumber = json['po_number'];
    requestedShipDate = json['requested_ship_date'];
    requestedShipVia = json['requested_ship_via'];
    isShipped = json['is_shipped'];
    carrierNumber = json['carrier_number'];
    dataSubmitted = json['data_submitted'];
    shippingType = json['shipping_type'];
    shippingLabel = json['shipping_label'];
    trackingNumber = json['tracking_number'];
    shipMentStatus = json['shipMentStatus'] != null
        ? new ShipMentStatus.fromJson(json['shipMentStatus'])
        : null;
    wareHouseDetails = json['wareHouseDetails'] != null
        ? new WareHouseDetails.fromJson(json['wareHouseDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_shipment_id'] = this.orderShipmentId;
    data['order_shipment_status_id'] = this.orderShipmentStatusId;
    data['order_id'] = this.orderId;
    data['pre_order_id'] = this.preOrderId;
    data['inventory_transfer_id'] = this.inventoryTransferId;
    data['warehouse_id'] = this.warehouseId;
    data['order_line_ids'] = this.orderLineIds;
    data['shipping_carrier_id'] = this.shippingCarrierId;
    data['shipping_method_id'] = this.shippingMethodId;
    data['shipping_cost'] = this.shippingCost;
    data['products_charged'] = this.productsCharged;
    data['shipping_charged'] = this.shippingCharged;
    data['tax_code_dsc'] = this.taxCodeDsc;
    data['tax_rate_dsc'] = this.taxRateDsc;
    data['tax_charged'] = this.taxCharged;
    data['total_weight'] = this.totalWeight;
    data['total_volume'] = this.totalVolume;
    data['volume_units'] = this.volumeUnits;
    data['weight_units'] = this.weightUnits;
    data['ref_shipping_address_id'] = this.refShippingAddressId;
    data['shipping_name'] = this.shippingName;
    data['shipping_company'] = this.shippingCompany;
    data['shipping_street_address_1'] = this.shippingStreetAddress1;
    data['shipping_street_address_2'] = this.shippingStreetAddress2;
    data['shipping_city'] = this.shippingCity;
    data['shipping_state'] = this.shippingState;
    data['shipping_county'] = this.shippingCounty;
    data['shipping_country'] = this.shippingCountry;
    data['shipping_zip_code'] = this.shippingZipCode;
    data['shipping_special_instructions'] = this.shippingSpecialInstructions;
    data['po_number'] = this.poNumber;
    data['requested_ship_date'] = this.requestedShipDate;
    data['requested_ship_via'] = this.requestedShipVia;
    data['is_shipped'] = this.isShipped;
    data['carrier_number'] = this.carrierNumber;
    data['data_submitted'] = this.dataSubmitted;
    data['shipping_type'] = this.shippingType;
    data['shipping_label'] = this.shippingLabel;
    data['tracking_number'] = this.trackingNumber;
    if (this.shipMentStatus != null) {
      data['shipMentStatus'] = this.shipMentStatus!.toJson();
    }
    if (this.wareHouseDetails != null) {
      data['wareHouseDetails'] = this.wareHouseDetails!.toJson();
    }
    return data;
  }
}

class ShipMentStatus {
  String? orderShipmentStatusId;
  String? warehouseId;
  String? orderShipmentStatusName;
  String? orderShipmentStatusDsc;
  String? setOrderStatusId;
  String? eventStatusRef;

  ShipMentStatus(
      {this.orderShipmentStatusId,
      this.warehouseId,
      this.orderShipmentStatusName,
      this.orderShipmentStatusDsc,
      this.setOrderStatusId,
      this.eventStatusRef});

  ShipMentStatus.fromJson(Map<String, dynamic> json) {
    orderShipmentStatusId = json['order_shipment_status_id'];
    warehouseId = json['warehouse_id'];
    orderShipmentStatusName = json['order_shipment_status_name'];
    orderShipmentStatusDsc = json['order_shipment_status_dsc'];
    setOrderStatusId = json['set_order_status_id'];
    eventStatusRef = json['event_status_ref'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_shipment_status_id'] = this.orderShipmentStatusId;
    data['warehouse_id'] = this.warehouseId;
    data['order_shipment_status_name'] = this.orderShipmentStatusName;
    data['order_shipment_status_dsc'] = this.orderShipmentStatusDsc;
    data['set_order_status_id'] = this.setOrderStatusId;
    data['event_status_ref'] = this.eventStatusRef;
    return data;
  }
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

  WareHouseDetails.fromJson(Map<String, dynamic> json) {
    warehouseId = json['warehouse_id'];
    warehouseName = json['warehouse_name'];
    contactNames = json['contact_names'];
    phone = json['phone'];
    fax = json['fax'];
    email = json['email'];
    poFromEmail = json['po_from_email'];
    poToAddresses = json['po_to_addresses'];
    notes = json['notes'];
    warehouseDefaultAddressId = json['warehouse_default_address_id'];
    warehouseDefaultUserId = json['warehouse_default_user_id'];
    defaultShippingCarrierId = json['default_shipping_carrier_id'];
    activeTaxCodeId = json['active_tax_code_id'];
    isDropshipper = json['is_dropshipper'];
    isRetail = json['is_retail'];
    isWholesale = json['is_wholesale'];
    poNumberBase = json['po_number_base'];
    formsDirectory = json['forms_directory'];
    dropShipHandlerIdLive = json['drop_ship_handler_id_live'];
    autoSubmitPo = json['auto_submit_po'];
    repNotification = json['rep_notification'];
    sortOrder = json['sort_order'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['warehouse_id'] = this.warehouseId;
    data['warehouse_name'] = this.warehouseName;
    data['contact_names'] = this.contactNames;
    data['phone'] = this.phone;
    data['fax'] = this.fax;
    data['email'] = this.email;
    data['po_from_email'] = this.poFromEmail;
    data['po_to_addresses'] = this.poToAddresses;
    data['notes'] = this.notes;
    data['warehouse_default_address_id'] = this.warehouseDefaultAddressId;
    data['warehouse_default_user_id'] = this.warehouseDefaultUserId;
    data['default_shipping_carrier_id'] = this.defaultShippingCarrierId;
    data['active_tax_code_id'] = this.activeTaxCodeId;
    data['is_dropshipper'] = this.isDropshipper;
    data['is_retail'] = this.isRetail;
    data['is_wholesale'] = this.isWholesale;
    data['po_number_base'] = this.poNumberBase;
    data['forms_directory'] = this.formsDirectory;
    data['drop_ship_handler_id_live'] = this.dropShipHandlerIdLive;
    data['auto_submit_po'] = this.autoSubmitPo;
    data['rep_notification'] = this.repNotification;
    data['sort_order'] = this.sortOrder;
    data['is_active'] = this.isActive;
    return data;
  }
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

  OrderLines.fromJson(Map<String, dynamic> json) {
    orderLineId = json['order_line_id'];
    orderId = json['order_id'];
    orderShipmentId = json['order_shipment_id'];
    productId = json['product_id'];
    discountId = json['discount_id'];
    shippingMethodId = json['shipping_method_id'];
    taxRateId = json['tax_rate_id'];
    adjustmentId = json['adjustment_id'];
    lineDsc = json['line_dsc'];
    lineSku = json['line_sku'];
    lineValue = json['line_value'];
    qty = json['qty'];
    lineTotal = json['line_total'];
    parentId = json['parent_id'];
    sortOrder = json['sort_order'];
    internal = json['internal'];
    isSummary = json['is_summary'];
    priceType = json['price_type'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_line_id'] = this.orderLineId;
    data['order_id'] = this.orderId;
    data['order_shipment_id'] = this.orderShipmentId;
    data['product_id'] = this.productId;
    data['discount_id'] = this.discountId;
    data['shipping_method_id'] = this.shippingMethodId;
    data['tax_rate_id'] = this.taxRateId;
    data['adjustment_id'] = this.adjustmentId;
    data['line_dsc'] = this.lineDsc;
    data['line_sku'] = this.lineSku;
    data['line_value'] = this.lineValue;
    data['qty'] = this.qty;
    data['line_total'] = this.lineTotal;
    data['parent_id'] = this.parentId;
    data['sort_order'] = this.sortOrder;
    data['internal'] = this.internal;
    data['is_summary'] = this.isSummary;
    data['price_type'] = this.priceType;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    return data;
  }
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

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    manufacturerId = json['manufacturer_id'];
    sku = json['sku'];
    manufacturerSku = json['manufacturer_sku'];
    cola = json['cola'];
    bidcola = json['bidcola'];
    name = json['name'];
    slug = json['slug'];
    priceSuggested = json['price_suggested'];
    directImportPrice = json['direct_import_price'];
    diPrice = json['di_price'];
    wholesalePrice = json['wholesale_price'];
    wholesalePriceSuggested = json['wholesale_price_suggested'];
    distributorPrice = json['distributor_price'];
    distributorPriceSuggested = json['distributor_price_suggested'];
    onHand = json['on_hand'];
    defaultRetailWarehouseId = json['default_retail_warehouse_id'];
    defaultWholesaleWarehouseId = json['default_wholesale_warehouse_id'];
    defaultTaxCodeId = json['default_tax_code_id'];
    weight = json['weight'];
    isBundle = json['is_bundle'];
    itemsPerUnit = json['items_per_unit'];
    itemsPerCase = json['items_per_case'];
    dateAvailable = json['date_available'];
    isNew = json['is_new'];
    dateCreated = json['date_created'];
    modDt = json['mod_dt'];
    inventoryStatus = json['inventory_status'];
    productTypeId = json['product_type_id'];
    isRetail = json['is_retail'];
    isWholesale = json['is_wholesale'];
    isDistributor = json['is_distributor'];
    salesTargetOverwrite = json['sales_target_overwrite'];
    specialSalesPercentage = json['special_sales_percentage'];
    excludedFromSalesVolume = json['excluded_from_sales_volume'];
    isArchived = json['is_archived'];
    shopifyProductId = json['shopify_product_id'];
    price = json['price'];
    editStatus = json['edit_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['manufacturer_id'] = this.manufacturerId;
    data['sku'] = this.sku;
    data['manufacturer_sku'] = this.manufacturerSku;
    data['cola'] = this.cola;
    data['bidcola'] = this.bidcola;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['price_suggested'] = this.priceSuggested;
    data['direct_import_price'] = this.directImportPrice;
    data['di_price'] = this.diPrice;
    data['wholesale_price'] = this.wholesalePrice;
    data['wholesale_price_suggested'] = this.wholesalePriceSuggested;
    data['distributor_price'] = this.distributorPrice;
    data['distributor_price_suggested'] = this.distributorPriceSuggested;
    data['on_hand'] = this.onHand;
    data['default_retail_warehouse_id'] = this.defaultRetailWarehouseId;
    data['default_wholesale_warehouse_id'] = this.defaultWholesaleWarehouseId;
    data['default_tax_code_id'] = this.defaultTaxCodeId;
    data['weight'] = this.weight;
    data['is_bundle'] = this.isBundle;
    data['items_per_unit'] = this.itemsPerUnit;
    data['items_per_case'] = this.itemsPerCase;
    data['date_available'] = this.dateAvailable;
    data['is_new'] = this.isNew;
    data['date_created'] = this.dateCreated;
    data['mod_dt'] = this.modDt;
    data['inventory_status'] = this.inventoryStatus;
    data['product_type_id'] = this.productTypeId;
    data['is_retail'] = this.isRetail;
    data['is_wholesale'] = this.isWholesale;
    data['is_distributor'] = this.isDistributor;
    data['sales_target_overwrite'] = this.salesTargetOverwrite;
    data['special_sales_percentage'] = this.specialSalesPercentage;
    data['excluded_from_sales_volume'] = this.excludedFromSalesVolume;
    data['is_archived'] = this.isArchived;
    data['shopify_product_id'] = this.shopifyProductId;
    data['price'] = this.price;
    data['edit_status'] = this.editStatus;
    return data;
  }
}
