import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import 'package:iconify_flutter/icons/la.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:intl/intl.dart';
import 'package:winemonger/features/order/order_controller.dart';

// class OrderList extends StatelessWidget {
//   OrderList({Key? key}) : super(key: key);
//   final OrdersController _controller = Get.put(OrdersController());

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Container(
//         margin: EdgeInsets.only(left: 45, right: 45, top: 0, bottom: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Flexible(
//               fit: FlexFit.tight,
//               child: _orderlist(context),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _orderlist(BuildContext context) {
//     final OrdersController _controller = Get.find();
//     var ids = List.empty(growable: true);
//     for (int i = 0; i < _controller.orderModelEntity.value.data.length; i++) {
//       ids.add(DateFormat.yMMMMd().format(
//           DateTime.parse(_controller.orderModelEntity.value.data[i].orderDt!)));
//     }

//     var distinctIds = ids.toSet().toList();
//     distinctIds.sort(
//       (a, b) {
//         return b.compareTo(a);
//       },
//     );

//     return Container(
//       //height: MediaQuery.of(context).size.height * 0.4,
//       child: ListView.builder(
//           // the number of items in the list
//           itemCount: distinctIds.length,

//           // display each item of the product list
//           itemBuilder: (context, k) {
//             return Card(
//               elevation: 5,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(5),
//                 child: ExpansionTile(
//                   maintainState: true,
//                   initiallyExpanded: false,
//                   collapsedBackgroundColor: Color(0xffcae3a8),
//                   collapsedIconColor: Color(0xff646464),
//                   collapsedTextColor: Colors.black,
//                   textColor: Colors.black,
//                   iconColor: Color(0xff646464),
//                   backgroundColor: Color(0xffcae3a8),
//                   title: Container(
//                     child: Center(
//                       child: Text(
//                         "${distinctIds[k]}",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w500, color: Colors.black),
//                       ),
//                     ),
//                   ),
//                   children: [
//                     Container(
//                       color: Color(0xfff8f8f8),
//                       child: Column(
//                         children: [
//                           for (int j = 0;
//                               j <
//                                   _controller
//                                       .orderModelEntity.value.data.length;
//                               j++)
//                             if (DateFormat.yMMMMd().format(DateTime.parse(
//                                     _controller.orderModelEntity.value.data[j]
//                                         .orderDt!)) ==
//                                 distinctIds[k])
//                               /////
//                               InkWell(
//                                 child: Container(
//                                     margin: EdgeInsets.only(top: 7),
//                                     padding: EdgeInsets.all(7),
//                                     decoration: new BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(5),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.grey.withOpacity(0.2),
//                                           spreadRadius: 5,
//                                           blurRadius: 5,
//                                           offset: Offset(0,
//                                               4), // changes position of shadow
//                                         ),
//                                       ],
//                                     ),
//                                     width: double.infinity,
//                                     child: Row(
//                                       children: [
//                                         Expanded(
//                                           flex: 4,
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                   "${_controller.orderModelEntity.value.data[j].customerName!}",
//                                                   style: TextStyle(
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.w700)),
//                                               SizedBox(
//                                                 height: 10,
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   Expanded(
//                                                     flex: 1,
//                                                     child: Text(
//                                                       "Status",
//                                                       style: TextStyle(
//                                                         color:
//                                                             Color(0xffa1a1a1),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   _controller
//                                                               .orderModelEntity
//                                                               .value
//                                                               .data[j]
//                                                               .orderShipments[0]
//                                                               .dataSubmitted
//                                                               .toString() ==
//                                                           "1"
//                                                       ? Expanded(
//                                                           flex: 2,
//                                                           child: Text(
//                                                             "Order Delivered",
//                                                             style: TextStyle(
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w600),
//                                                           ))
//                                                       : Expanded(
//                                                           flex: 2,
//                                                           child: Text(
//                                                             "On the way",
//                                                             style: TextStyle(
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w600),
//                                                           )),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 thickness: 1.5,
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   Expanded(
//                                                     flex: 1,
//                                                     child: Text(
//                                                       "OrderId",
//                                                       style: TextStyle(
//                                                         color:
//                                                             Color(0xffa1a1a1),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Expanded(
//                                                       flex: 2,
//                                                       child: Text(
//                                                         "#${_controller.orderModelEntity.value.data[j].orderId!}",
//                                                         style: TextStyle(
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w600),
//                                                       )),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         _controller
//                                                     .orderModelEntity
//                                                     .value
//                                                     .data[j]
//                                                     .orderShipments[0]
//                                                     .dataSubmitted
//                                                     .toString() ==
//                                                 "1"
//                                             ? Expanded(
//                                                 flex: 1,
//                                                 child: Align(
//                                                   alignment:
//                                                       Alignment.topCenter,
//                                                   child: Iconify(
//                                                     Ic.outline_check_circle_outline,
//                                                     color: Color(0xff34ad09),
//                                                     size: 35,
//                                                   ),
//                                                 ),
//                                               )
//                                             : Expanded(
//                                                 flex: 1,
//                                                 child: Iconify(
//                                                   La.shipping_fast,
//                                                   color: Color(0xffa1a1a1),
//                                                   size: 35,
//                                                 ),
//                                               ),
//                                       ],
//                                     )),
//                                 onTap: () {
//                                   Get.toNamed('/orderdetailscreen', arguments: {
//                                     'orderId': _controller
//                                         .orderModelEntity.value.data[j].orderId
//                                   });
//                                   print(
//                                       '${_controller.orderModelEntity.value.data[j].orderId!}');
//                                 },
//                               ),

//                           ///
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );

//             //////
//           }),
//     );

//     ///
//     ///
//   }
// }

class OrderList extends StatefulWidget {
  OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final OrdersController _controller = Get.put(OrdersController());

  @override
  void initState() {
    // TODO: implement initState
    _controller.scrollController.addListener(() {
      if (_controller.scrollController.position.pixels >=
          _controller.scrollController.position.maxScrollExtent) {
        print("true");
        _controller.count1.value += 5;
        //_controller.count2.value += 1;
        _controller.bulklistApi();
        // offsetCount= offsetCount + 5;
        // exploreController.fetchArticles(offsetCount: offsetCount);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(left: 45, right: 45, top: 0, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: _orderlist(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _orderlist(BuildContext context) {
    var ids = List.empty(growable: true);
    for (int i = 0; i < _controller.bulklist.value.length; i++) {
      ids.add(DateFormat.yMMMMd()
          .format(DateTime.parse(_controller.bulklist.value[i].orderDt!)));
    }

    var distinctIds = ids.toSet().toList();
    // distinctIds.sort(
    //   (a, b) {
    //     return b.compareTo(a);
    //   },
    // );
    print(distinctIds);
    return Container(
      child: ListView.builder(
          controller: _controller.scrollController,
          itemCount: distinctIds.length,

          // display each item of the product list
          itemBuilder: (context, k) {
            return Card(
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ExpansionTile(
                  maintainState: true,
                  initiallyExpanded: false,
                  collapsedBackgroundColor: Color(0xffcae3a8),
                  collapsedIconColor: Color(0xff646464),
                  collapsedTextColor: Colors.black,
                  textColor: Colors.black,
                  iconColor: Color(0xff646464),
                  backgroundColor: Color(0xffcae3a8),
                  title: Container(
                    child: Center(
                      child: Text(
                        "${distinctIds[k]}",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                  ),
                  children: [
                    Container(
                      color: Color(0xfff8f8f8),
                      child: Column(
                        children: [
                          for (int j = 0;
                              j < _controller.bulklist.value.length;
                              j++)
                            if (DateFormat.yMMMMd().format(DateTime.parse(
                                    _controller.bulklist.value[j].orderDt!)) ==
                                distinctIds[k])
                              /////
                              InkWell(
                                child: Container(
                                    margin: EdgeInsets.only(top: 7),
                                    padding: EdgeInsets.all(7),
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                          offset: Offset(0,
                                              4), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "${_controller.bulklist.value[j].customerName!}",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      "Status",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffa1a1a1),
                                                      ),
                                                    ),
                                                  ),
                                                  _controller
                                                              .bulklist
                                                              .value[j]
                                                              .orderShipments[0]
                                                              .dataSubmitted
                                                              .toString() ==
                                                          "1"
                                                      ? Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            "Order Delivered",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ))
                                                      : Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            "On the way",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          )),
                                                ],
                                              ),
                                              Divider(
                                                thickness: 1.5,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      "OrderId",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffa1a1a1),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                      flex: 2,
                                                      child: Text(
                                                        "#${_controller.bulklist.value[j].orderId!}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        _controller
                                                    .bulklist
                                                    .value[j]
                                                    .orderShipments[0]
                                                    .dataSubmitted
                                                    .toString() ==
                                                "1"
                                            ? Expanded(
                                                flex: 1,
                                                child: Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Iconify(
                                                    Ic.outline_check_circle_outline,
                                                    color: Color(0xff34ad09),
                                                    size: 35,
                                                  ),
                                                ),
                                              )
                                            : Expanded(
                                                flex: 1,
                                                child: Iconify(
                                                  La.shipping_fast,
                                                  color: Color(0xffa1a1a1),
                                                  size: 35,
                                                ),
                                              ),
                                      ],
                                    )),
                                onTap: () {
                                  Get.toNamed('/orderdetailscreen', arguments: {
                                    'orderId':
                                        _controller.bulklist.value[j].orderId
                                  });
                                  print(
                                      '${_controller.bulklist.value[j].orderId!}');
                                },
                              ),

                          ///
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );

            //////
          }),
    );

    ///
    ///
  }
}
