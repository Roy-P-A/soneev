class OrderModel {
  int? code;
  String? totalNoItems;
  List<Data>? data;

  OrderModel({this.code, this.totalNoItems, this.data});

  OrderModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    totalNoItems = json['Total_No_Items'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['Total_No_Items'] = this.totalNoItems;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
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
  Customer? customer;
  List<OrderShipments>? orderShipments;

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
      this.customer,
      this.orderShipments});

  Data.fromJson(Map<String, dynamic> json) {
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
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    if (json['order_shipments'] != null) {
      orderShipments = <OrderShipments>[];
      json['order_shipments'].forEach((v) {
        orderShipments!.add(new OrderShipments.fromJson(v));
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
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    if (this.orderShipments != null) {
      data['order_shipments'] =
          this.orderShipments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
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

  Customer.fromJson(Map<String, dynamic> json) {
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
