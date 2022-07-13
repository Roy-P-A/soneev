// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loading_overlay/loading_overlay.dart';
import 'package:winemonger/features/order/order_detailscreen/order_detail_controller.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ri.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({Key? key}) : super(key: key);
  final OrdersDetailController _controller = Get.put(OrdersDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: _controller.isInitialized.isFalse,
        opacity: 1,
        color: Colors.white,
        progressIndicator: const CircularProgressIndicator(
          color: Color(0xffcae3a8),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 29, right: 29, top: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                _heading(context),
                SizedBox(
                  height: 10,
                ),
                _customer(context),
                SizedBox(
                  height: 10,
                ),
                _billingInformation(context),
                SizedBox(
                  height: 10,
                ),
                _shippingInformation(context),
                SizedBox(
                  height: 10,
                ),
                _status(context),
                SizedBox(
                  height: 10,
                ),
                _orderitems(context),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ////
  Widget _heading(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xffcae3a8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Text("Order #${_controller.globalEntity.value.orderId ?? ""}",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
      ],
    );
  }

/////
  Widget _customer(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xffcae3a8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Text("Customer",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(3),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Name:",
                              style: TextStyle(color: Color(0xffa1a1a1)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.customerName}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Reseller Number:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.resellerNumber}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Abc Number:",
                                style: TextStyle(
                                  color: Color(0xffa1a1a1),
                                )),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.customers.abcNumber}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Phone:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.customers.phone}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Email:",
                              style: TextStyle(color: Color(0xffa1a1a1)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.customers.email}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Company Name:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.customers.companyName}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Iconify(Ic.outline_edit),
                      onPressed: () {},
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            )),
      ],
    );
  }

  ///
  Widget _billingInformation(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xffcae3a8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Text("Billing Information",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(3),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Name:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                                "${_controller.globalEntity.value.orderPayment.billingName}",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Company Name:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Obx(
                              () => Text(
                                  "${_controller.globalEntity.value.orderPayment.billingCompany}",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Address:",
                                    style: TextStyle(color: Color(0xffa1a1a1))),
                                Text(""),
                                Text(""),
                                Text(""),
                                Text(""),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Obx(
                              () => Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "${_controller.globalEntity.value.orderPayment.billingStreetAddress1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  if (_controller.globalEntity.value
                                          .orderPayment.billingStreetAddress2 !=
                                      "")
                                    Text(
                                        "${_controller.globalEntity.value.orderPayment.billingStreetAddress2}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  Text(
                                      "${_controller.globalEntity.value.orderPayment.billingState}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  Text(
                                      "${_controller.globalEntity.value.orderPayment.billingCity}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  Text(
                                      "${_controller.globalEntity.value.orderPayment.billingZipCode}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "${_controller.globalEntity.value.orderPayment.paymentMethodName}",
                        style: TextStyle(
                          color: Color(0xffcae3a8),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }

  /////
  Widget _shippingInformation(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xffcae3a8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Text("Shipping Information",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(3),
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Name:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Obx(
                              () => Text(
                                  "${_controller.globalEntity.value.customers.shippingAddress.companyName}",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Text("Company Name:",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Obx(
                              () => Text(
                                  "${_controller.globalEntity.value.customers.shippingAddress.companyName}",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Address:",
                                    style: TextStyle(color: Color(0xffa1a1a1))),
                                Text(""),
                                Text(""),
                                Text(""),
                                Text(""),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Obx(
                              () => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "${_controller.globalEntity.value.customers.shippingAddress.streetAddress1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  if (_controller.globalEntity.value.customers
                                          .shippingAddress.streetAddress2 !=
                                      "")
                                    Text(
                                        "${_controller.globalEntity.value.customers.shippingAddress.streetAddress2}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  Text(
                                      "${_controller.globalEntity.value.customers.shippingAddress.state}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  Text(
                                      "${_controller.globalEntity.value.customers.shippingAddress.city}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  Text(
                                      "${_controller.globalEntity.value.customers.shippingAddress.zipCode}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                for (int i = 0;
                    i < _controller.globalEntity.value.orderShipments.length;
                    i++)
                  Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                  "${_controller.globalEntity.value.orderShipments[i].wareHouseDetails.warehouseName}",
                                  style: TextStyle(color: Color(0xffa1a1a1))),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: _controller.globalEntity.value
                                          .orderShipments[i].shipMentStatus !=
                                      null
                                  ? Text(_controller
                                          .globalEntity
                                          .value
                                          .orderShipments[i]
                                          .shipMentStatus!
                                          .orderShipmentStatusName ??
                                      " ")
                                  : Text(
                                      "Not Submitted",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                            ),
                          ),
                        ],
                      )),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Iconify(Ic.outline_edit),
                      onPressed: () {},
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            )),
      ],
    );
  }

  ///
  Widget _status(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      children: [
        for (int j = 0;
            j < _controller.globalEntity.value.orderStatusHistories.length;
            j++)
          if (_controller.globalEntity.value.orderStatusHistories[j].orderStatus
                  .orderStatusName ==
              _controller.globalEntity.value.orderStatusHistories[0].orderStatus
                  .orderStatusName)
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xffcae3a8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Text(
                  "Status (${_controller.globalEntity.value.orderStatusHistories[j].orderStatus.orderStatusName})",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
            )
          else
            Container(),
        SizedBox(
          height: 15,
        ),
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Iconify(Ri.edit_box_line),
                      onPressed: () {},
                    ),
                    Text(
                      'Change Status',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Divider(),
                for (int j = 0;
                    j <
                        _controller
                            .globalEntity.value.orderStatusHistories.length;
                    j++)
                  Container(
                      padding: EdgeInsets.all(3),
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                  "${_controller.globalEntity.value.orderStatusHistories[j].dt}"),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                  "${_controller.globalEntity.value.orderStatusHistories[j].orderStatus.orderStatusName}"),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                  "${_controller.globalEntity.value.orderStatusHistories[j].comment}"),
                            ),
                          ),
                        ],
                      )),
              ],
            )),
      ],
    );
  }

  ///
  Widget _orderitems(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xffcae3a8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Text("Order Items",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text("Item",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text("Sku",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text("Cost",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text("Qty",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text("Total",
                                style: TextStyle(color: Color(0xffa1a1a1))),
                          ),
                        ),
                      ],
                    )),
                for (int i = 1;
                    i < _controller.globalEntity.value.orderLines.length;
                    i++)
                  Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 3, right: 3, top: 7, bottom: 7),
                              child: Text(
                                "${_controller.globalEntity.value.orderLines[i].lineDsc}",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 3, right: 3, top: 7, bottom: 7),
                              child: Text(
                                  "${_controller.globalEntity.value.orderLines[i].lineSku}",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ),
                          _controller.globalEntity.value.orderLines[i]
                                      .lineValue !=
                                  null
                              ? Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 3, right: 3, top: 7, bottom: 7),
                                    child: Text(
                                        "${stringModifier(_controller.globalEntity.value.orderLines[i].lineValue)}",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                )
                              : Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 3, right: 3, top: 7, bottom: 7),
                                    child: Text(""),
                                  ),
                                ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 3, right: 3, top: 7, bottom: 7),
                              child: Text(
                                  "${_controller.globalEntity.value.orderLines[i].qty}",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ),
                          _controller.globalEntity.value.orderLines[i]
                                      .lineTotal !=
                                  null
                              ? Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 3, right: 3, top: 7, bottom: 7),
                                    child: Text(
                                        "${stringModifier(_controller.globalEntity.value.orderLines[i].lineTotal)}",
                                        style: TextStyle(fontSize: 12)),
                                  ),
                                )
                              : Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 3, right: 3, top: 7, bottom: 7),
                                    child: Text(" "),
                                  ),
                                )
                        ],
                      )),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text("Total"),
                        )),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                              " \$${_controller.globalEntity.value.total}",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _ordershipments(context),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
      ],
    );
  }

  ///
  Widget _ordershipments(BuildContext context) {
    final OrdersDetailController _controller = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          child: Text(
            "Order Shipments",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int j = 0;
                j < _controller.globalEntity.value.orderStatusHistories.length;
                j++)
              Container(
                  padding: EdgeInsets.all(3),
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Text(
                              "${_controller.globalEntity.value.orderShipments[j].wareHouseDetails.warehouseName}"),
                        ),
                      ),
                      _controller.globalEntity.value.orderShipments[j]
                                  .shipMentStatus !=
                              null
                          ? Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                child: Text(_controller
                                        .globalEntity
                                        .value
                                        .orderShipments[j]
                                        .shipMentStatus!
                                        .eventStatusRef ??
                                    "Not submitted"),
                              ),
                            )
                          : Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                child: Text("Not submitted"),
                              ),
                            )
                    ],
                  )),
          ],
        ),
      ],
    );
  }
  ////

}

String stringModifier(value) {
  var string1 = value;
  if (string1.contains('-')) {
    var string2 = string1.replaceAll(RegExp('-'), '');
    return "-\$${string2}";
  } else
    return "\$${string1}";
}
