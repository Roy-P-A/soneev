import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class ConfirmingProductWidget extends StatefulWidget {
  const ConfirmingProductWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmingProductWidget> createState() =>
      _ConfirmingProductWidgetState();
}

class _ConfirmingProductWidgetState extends State<ConfirmingProductWidget> {
  @override
  Widget build(BuildContext context) {
    final WholesaleCreateController _controller = Get.find();

    return Obx(() => _confirmingProductWidget(context));
  }
}

Widget _confirmingProductWidget(BuildContext context) {
  final WholesaleCreateController _controller = Get.find();
  if (_controller
          .orderWholesaleSelectProductbuttomModelEntity.value.itemsPerCase !=
      null) {
    _controller.quantityController.value.text = _controller
        .orderWholesaleSelectProductbuttomModelEntity.value.itemsPerCase!;
  }

  return Container(
    child: Form(
      key: _controller.formKey5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sku"),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.black)),
                child: Text(
                    "${_controller.orderWholesaleSelectProductbuttomModelEntity.value.id ?? ""}"),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Product"),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.black)),
                child: Text(
                    "${_controller.orderWholesaleSelectProductbuttomModelEntity.value.name ?? ""}"),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cost"),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black)),
                  child: _controller
                              .orderWholesaleSelectProductbuttomModelEntity
                              .value
                              .wholesalePrice !=
                          null
                      ? Text(
                          "\$ ${double.parse(_controller.orderWholesaleSelectProductbuttomModelEntity.value.wholesalePrice!).toStringAsFixed(2).toString()}")
                      : Text(""))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Quantity"),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _controller.quantityController.value,
                validator: (value) {
                  if (_controller.quantityController.value.text.isEmpty) {
                    return "Enter a number";
                  } else {
                    if (int.parse(_controller.quantityController.value.text) >
                        int.parse(_controller
                            .orderWholesaleSelectProductbuttomModelEntity
                            .value
                            .onHand!)) {
                      return 'Quantity available: ${_controller.orderWholesaleSelectProductbuttomModelEntity.value.onHand!} only';
                    }
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(13),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffdfdfdf),
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                //textInputAction: TextInputAction.next,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
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
              child: Text("Add to Orders",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black)),
            ),
            onTap: () {
              if (_controller
                      .orderWholesaleSelectProductbuttomModelEntity.value.id !=
                  null) {
                _controller.addToOrdersValidations();
              }
            },
          ),
        ],
      ),
    ),
  );
}

// import 'package:flutter/material.dart';

// Widget _selectButtonToAddToOrders(BuildContext context) {
//   return Container(
//     child: Column(
//       children: [
//         SizedBox(
//           height: 10,
//         ),
//         Row(children: [
//           Expanded(
//             flex: 1,
//             child: Text(
//               'Sku',
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 'value',
//               ),
//             ),
//           ),
//         ]),
//         SizedBox(
//           height: 10,
//         ),
//         Row(children: [
//           Expanded(
//             flex: 1,
//             child: Text(
//               'Product',
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 'value',
//               ),
//             ),
//           ),
//         ]),
//         SizedBox(
//           height: 10,
//         ),
//         Row(children: [
//           Expanded(
//             flex: 1,
//             child: Text(
//               'Cost',
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 'value',
//               ),
//             ),
//           ),
//         ]),
//         SizedBox(
//           height: 10,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Quantity"),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               //controller: _controller.usernameController,
//               decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 filled: true,
//                 contentPadding: EdgeInsets.all(13),
//                 border: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     color: Color(0xffdfdfdf),
//                   ),
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//               //textInputAction: TextInputAction.next,
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 25,
//         ),
//         InkWell(
//           child: Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(10),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5.0),
//               color: Color(0xffcae3a8),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.4),
//                   spreadRadius: 1,
//                   blurRadius: 1,
//                   offset: Offset(1, 1), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Text("Add to Orders",
//                 style: TextStyle(
//                     fontWeight: FontWeight.w600, color: Colors.black)),
//           ),
//           onTap: () {
//             setState(() {
//               addToOrders = true;
//               selectButtonToAddToOrders = false;
//             });
//           },
//         ),
//       ],
//     ),
//   );
// }
