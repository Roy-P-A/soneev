import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class OrderedWidget extends StatefulWidget {
  const OrderedWidget({Key? key}) : super(key: key);

  @override
  State<OrderedWidget> createState() => _OrderedWidgetState();
}

class _OrderedWidgetState extends State<OrderedWidget> {
  final WholesaleCreateController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          for (int j = 0;
              j < _controller.bulkAddAdjustmentslist.value.value.length;
              j++)
            Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        child: Text(
                            "${_controller.bulkAddAdjustmentslist.value.value[j].sku}"),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        child: _controller.bulkAddAdjustmentslist.value.value[j]
                                    .value !=
                                null
                            ? Text(
                                "\$${double.parse(_controller.bulkAddAdjustmentslist.value.value[j].value!)}")
                            : Text(""),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(3),
                        child: Text(
                          "",
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          "\$${_controller.bulkAddAdjustmentslist.value.value[j].total}",
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Icon(Icons.delete),
                        onTap: () {
                          //selectButtonToAddToOrders = false;
                          //_controller.addToOrders.value = false;
                        },
                      ),
                    ),
                  ],
                )),
        ],
      ),
    );
  }
}
