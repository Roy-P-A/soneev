import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class OrderedProductWidget extends StatefulWidget {
  const OrderedProductWidget({Key? key}) : super(key: key);

  @override
  State<OrderedProductWidget> createState() => _OrderedProductWidgetState();
}

class _OrderedProductWidgetState extends State<OrderedProductWidget> {
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
          _controller.orderWholesaleSelectAddToOrdersModelEntity.value.data7
                      .lineDsc ==
                  null
              ? Container()
              : Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Product",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Cost",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Quantity",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "Amount",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "",
                          ),
                        ),
                      ),
                    ],
                  )),
          Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      child: Text(
                          "${_controller.orderWholesaleSelectAddToOrdersModelEntity.value.data7.lineDsc}"),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      child: _controller
                                  .orderWholesaleSelectAddToOrdersModelEntity
                                  .value
                                  .data7
                                  .value !=
                              null
                          ? Text(
                              "\$ ${double.parse(_controller.orderWholesaleSelectAddToOrdersModelEntity.value.data7.value!)}")
                          : Text(""),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "${_controller.orderWholesaleSelectAddToOrdersModelEntity.value.data7.qty}",
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "\$ ${_controller.orderWholesaleSelectAddToOrdersModelEntity.value.data7.total}",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      child: Icon(Icons.delete),
                      onTap: () {
                        //selectButtonToAddToOrders = false;
                        _controller.removeToOrders();
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
