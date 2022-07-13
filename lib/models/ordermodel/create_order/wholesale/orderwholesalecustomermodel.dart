class OrderWholesaleCustomerModel {
  int? code;
  List<Data1> data1;

  OrderWholesaleCustomerModel({this.code, required this.data1});

  factory OrderWholesaleCustomerModel.fromJson(Map<String, dynamic> json) =>
      OrderWholesaleCustomerModel(
        code: json['code'],
        data1: List<Data1>.from(json['data'].map((x) => Data1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'data': List<dynamic>.from(data1.map((x) => x.toJson())),
      };
}

class Data1 {
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
  dynamic? customerActivationKey;
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

  Data1(
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

  factory Data1.fromJson(Map<String, dynamic> json) => Data1(
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
