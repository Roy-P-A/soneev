import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:winemonger/features/order/order.dart';
import 'package:winemonger/models/ordermodel/order_model.dart';

class OrderList extends StatefulWidget {
  OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final OrdersController _controller = Get.put(OrdersController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: _controller.isInitialized.isFalse,
        opacity: 1,
        color: Colors.white,
        progressIndicator: const CircularProgressIndicator(
          color: Color(0xff727f5f),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff727f5f),
                  ),
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text("Search order",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
                _searchbar(context),
                _orderlist(context),
                SizedBox(
                  height: 10,
                ),
                _bottompart(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchbar(BuildContext context) {
    final OrdersController _controller = Get.find();
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300,
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }

  // // Widget? _orderlist(BuildContext context) {
  // Widget? _orderlist(BuildContext context) {
  //   final OrdersController _controller = Get.find();
  //   //var list = _controller.globalEntity.value.data.sort();
  //   //var format = DateFormat('HH:mm a');
  //   //${DateFormat.yMMMMd().format(DateTime.parse(_controller.globalEntity.value.data![i].orderDt!))}

  //   // for (int i = 0; i < _controller.orderModelEntity.value.data!.length; i++) {
  //   //   if (DateFormat.yMMMMd().format(DateTime.parse(
  //   //           _controller.orderModelEntity.value.data![i].orderDt!)) ==
  //   //       DateFormat.yMMMMd().format(DateTime.parse(
  //   //           _controller.orderModelEntity.value.data![i].orderDt!)))
  //   return Column(
  //     children: [
  //       Container(
  //         padding: EdgeInsets.all(10),
  //         width: double.infinity,
  //         color: Color(0xff727f5f),
  //         child: Text(
  //             "${DateFormat.yMMMMd().format(DateTime.parse(_controller.orderModelEntity.value.data![0].orderDt!))}",
  //             style:
  //                 TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
  //       ),
  //       for (int j = 0;
  //           j < _controller.orderModelEntity.value.data!.length;
  //           j++)
  //         if (DateFormat.yMMMMd().format(DateTime.parse(
  //                 _controller.orderModelEntity.value.data![j].orderDt!)) ==
  //             DateFormat.yMMMMd().format(DateTime.parse(
  //                 _controller.orderModelEntity.value.data![j].orderDt!)))
  //           Container(
  //             decoration: BoxDecoration(
  //               //borderRadius: BorderRadius.circular(5),
  //               border: Border.all(
  //                 color: Color(0xff727f5f),
  //                 width: 0.2,
  //               ),
  //             ),
  //             //height: 550,
  //             child: ListTile(
  //               leading: Icon(Icons.add),
  //               title: Text(
  //                   "${_controller.orderModelEntity.value.data![j].customerName!}"),
  //               onTap: () {
  //                 Get.toNamed('/orderdetailscreen', arguments: {
  //                   'orderId':
  //                       _controller.orderModelEntity.value.data![j].orderId
  //                 });
  //                 print(
  //                     '${_controller.orderModelEntity.value.data![j].orderId!}');
  //               },
  //             ),
  //           ),
  //     ],
  //   );
  //   //}
  // }

  Widget _orderlist(BuildContext context) {
    final OrdersController _controller = Get.find();
    var ids = List.empty(growable: true);
    for (int i = 0; i < _controller.orderModelEntity.value.data.length; i++) {
      ids.add(DateFormat.yMMMMd().format(
          DateTime.parse(_controller.orderModelEntity.value.data[i].orderDt!)));
    }

    var distinctIds = ids.toSet().toList();
    distinctIds.sort(
      (a, b) {
        return b.compareTo(a);
      },
    );

    return Column(
      children: [
        for (int k = 0; k < distinctIds.length; k++)
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Color(0xff727f5f),
                  child: Text("${distinctIds[k]}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
                for (int j = 0;
                    j < _controller.orderModelEntity.value.data.length;
                    j++)
                  if (DateFormat.yMMMMd().format(DateTime.parse(_controller
                          .orderModelEntity.value.data[j].orderDt!)) ==
                      distinctIds[k])
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff727f5f),
                          width: 0.2,
                        ),
                      ),
                      child: ListTile(
                        leading: _controller.orderModelEntity.value.data[j]
                                    .orderShipments[0].dataSubmitted
                                    .toString() ==
                                "1"
                            ? Icon(Icons.check_circle_rounded,
                                color: Colors.black)
                            : Icon(Icons.directions_bus, color: Colors.black),
                        title: Text(
                            "${_controller.orderModelEntity.value.data[j].customerName!}"),
                        onTap: () {
                          Get.toNamed('/orderdetailscreen', arguments: {
                            'orderId': _controller
                                .orderModelEntity.value.data[j].orderId
                          });
                          print(
                              '${_controller.orderModelEntity.value.data[j].orderId!}');
                        },
                      ),
                    ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
      ],
    );
  }

  Widget _bottompart(BuildContext context) {
    final OrdersController _controller = Get.find();
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: _controller.count.value <= 1
              ? Container()
              : Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 40,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black87,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {
                          _controller.decrement();
                          _controller.orderlistApi();
                        },
                      ),
                    ),
                  ),
                ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "#${_controller.count}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 40,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  onTap: () {
                    _controller.increment();
                    _controller.orderlistApi();
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
