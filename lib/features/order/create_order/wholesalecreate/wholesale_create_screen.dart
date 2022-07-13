import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/adjustmentwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/confirmingproductwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/customertextfieldwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/manufacturertextfieldwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/orderedproductwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/orderedwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/producttextfieldwidget.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/widgets/warehousetextdfieldwidget.dart';
import 'package:winemonger/models/ordermodel/order_detail_model.dart';

class WholeSaleCreateOrderList extends StatefulWidget {
  WholeSaleCreateOrderList({Key? key}) : super(key: key);

  @override
  State<WholeSaleCreateOrderList> createState() =>
      _WholeSaleCreateOrderListState();
}

class _WholeSaleCreateOrderListState extends State<WholeSaleCreateOrderList> {
  final WholesaleCreateController _controller =
      Get.put(WholesaleCreateController());
  String? selectedValue;
  dynamic userSelected;

  final TextEditingController typeAheadController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomerFieldTextWidget(),
                SizedBox(
                  height: 20,
                ),
                WarehouseTextField(),
                SizedBox(
                  height: 20,
                ),
                ManufacturerTextField(),
                SizedBox(
                  height: 20,
                ),
                ProductTextFieldtWidget(),
                SizedBox(
                  height: 30,
                ),
                _selectProductButton(context),
                SizedBox(
                  height: 10,
                ),
                _controller.selectButtonToAddToOrders.value == true
                    ? ConfirmingProductWidget()
                    : Container(),
                _controller.addToOrders.value == true
                    ? OrderedProductWidget()
                    : Container(),
                _controller.addToOrders1.value == true
                    ? OrderedWidget()
                    : Container(),
                AdjustmentWidget(),
                SizedBox(
                  height: 10,
                ),
                _totalAndConfirm(context),
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

  //
  Widget _selectProductButton(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
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
            child: Text("Select Product",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black)),
          ),
          onTap: () async {
            _controller.selectProductButton();
            await _controller.selectProductApi();
            if (_controller
                    .orderWholesaleSelectProductbuttomModelEntity.value.id !=
                null) {
              _controller.selectButtonToAddToOrders.value = true;
            }
          },
        ),
      ],
    );
  }

//
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

  //
  // Widget _addToOrders(BuildContext context) {
  //   return Column(
  //     children: [
  //       Container(
  //           width: double.infinity,
  //           color: Colors.white,
  //           child: Row(
  //             children: [
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text("", style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child:
  //                       Text("Sku", style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text("Quantity",
  //                       style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text(" Line Total",
  //                       style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text(" Amount",
  //                       style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //             ],
  //           )),
  //       Container(
  //           width: double.infinity,
  //           color: Colors.white,
  //           child: Row(
  //             children: [
  //               Expanded(
  //                 flex: 1,
  //                 child: InkWell(
  //                   child: Container(
  //                     alignment: Alignment.center,
  //                     padding:
  //                         EdgeInsets.only(left: 1, right: 1, top: 5, bottom: 5),
  //                     width: double.infinity,
  //                     decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(2),
  //                       color: Color(0xffcae3a8),
  //                       boxShadow: [
  //                         BoxShadow(
  //                           color: Colors.grey.withOpacity(0.4),
  //                           spreadRadius: 1,
  //                           blurRadius: 1,
  //                           offset: Offset(1, 1), // changes position of shadow
  //                         ),
  //                       ],
  //                     ),
  //                     child: Text("Remove",
  //                         style: TextStyle(
  //                             fontWeight: FontWeight.w600,
  //                             color: Colors.black)),
  //                   ),
  //                   onTap: () {
  //                     setState(() {
  //                       //selectButtonToAddToOrders = false;
  //                       _controller.addToOrders.value = false;
  //                     });
  //                   },
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child:
  //                       Text("Sku", style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text("Quantity",
  //                       style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text(" Line Total",
  //                       style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //               Expanded(
  //                 flex: 1,
  //                 child: Container(
  //                   padding: EdgeInsets.all(3),
  //                   child: Text(" Amount",
  //                       style: TextStyle(color: Color(0xffa1a1a1))),
  //                 ),
  //               ),
  //             ],
  //           )),
  //     ],
  //   );
  // }

  //
  // Widget _add(BuildContext context) {
  //   return Column(
  //     children: [
  //       SizedBox(
  //         height: 10,
  //       ),
  //       _skutextfield(context),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       _costtextfield(context),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       _quantitytextfield(context),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       _addButton(context),
  //       SizedBox(
  //         height: 10,
  //       ),
  //     ],
  //   );
  // }

  // ////
  // Widget _skutextfield(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text("Sku"),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       TextFormField(
  //         //controller: _controller.usernameController,
  //         decoration: InputDecoration(
  //           fillColor: Colors.white,
  //           filled: true,
  //           contentPadding: EdgeInsets.all(13),
  //           border: OutlineInputBorder(
  //             borderSide: const BorderSide(
  //               color: Color(0xffdfdfdf),
  //             ),
  //             borderRadius: BorderRadius.circular(5.0),
  //           ),
  //         ),
  //         //textInputAction: TextInputAction.next,
  //       ),
  //     ],
  //   );
  // }

  // ////
  // Widget _costtextfield(BuildContext context) {
  //   String? selectedValue;
  //   List<String> items = [
  //     'Item1',
  //     'Item2',
  //     'Item3',
  //     'Item4',
  //     'Item5',
  //     'Item6',
  //     'Item7',
  //     'Item8',
  //   ];
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text("Cost"),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       DropdownButtonHideUnderline(
  //         child: DropdownButton2(
  //           isExpanded: true,
  //           hint: Text("Select Adjustment"),
  //           items: items
  //               .map((item) => DropdownMenuItem<String>(
  //                     value: item,
  //                     child: Text(
  //                       item,
  //                       style: const TextStyle(
  //                         color: Colors.black,
  //                       ),
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   ))
  //               .toList(),
  //           value: selectedValue,
  //           onChanged: (value) {
  //             setState(() {
  //               selectedValue = value as String;
  //             });
  //           },
  //           icon: const Icon(
  //             Icons.keyboard_arrow_down,
  //           ),
  //           iconSize: 20,
  //           iconEnabledColor: Colors.grey,
  //           iconDisabledColor: Colors.grey,
  //           buttonHeight: 52,
  //           //buttonWidth: 160,
  //           buttonPadding: const EdgeInsets.only(left: 14, right: 14),
  //           buttonDecoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5),
  //             border: Border.all(
  //               color: Colors.black,
  //             ),
  //             color: Colors.white,
  //           ),
  //           //buttonElevation: 0,
  //           itemHeight: 40,
  //           itemPadding: const EdgeInsets.only(left: 14, right: 14),
  //           dropdownMaxHeight: 200,

  //           dropdownPadding: null,
  //           dropdownDecoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(2),
  //           ),
  //           dropdownElevation: 4,
  //           scrollbarRadius: const Radius.circular(2),
  //           scrollbarThickness: 4,
  //           scrollbarAlwaysShow: true,
  //           //offset: const Offset(-20, 0),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // ////
  // Widget _quantitytextfield(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text("Quantity"),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Container(
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5),
  //             color: Colors.white,
  //             border: Border.all(color: Color.fromARGB(255, 77, 76, 76))),
  //         child: Row(
  //           //mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: [
  //             Expanded(
  //               flex: 6,
  //               child: Container(
  //                 padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
  //                 child: Form(
  //                   child: TextFormField(
  //                     decoration: InputDecoration(
  //                       hintText: '1.0',
  //                       border: InputBorder.none,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'Amount',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 10,
  //       ),
  //     ],
  //   );
  // }

  // Widget _addButton(BuildContext context) {
  //   return InkWell(
  //     child: Container(
  //       alignment: Alignment.center,
  //       padding: EdgeInsets.all(10),
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(5.0),
  //         color: Color(0xffcae3a8),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.grey.withOpacity(0.4),
  //             spreadRadius: 1,
  //             blurRadius: 1,
  //             offset: Offset(1, 1), // changes position of shadow
  //           ),
  //         ],
  //       ),
  //       child: Text("Add",
  //           style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
  //     ),
  //     onTap: () {
  //       setState(() {
  //         addToOrders1 = true;
  //         addadjustments = false;
  //       });
  //     },
  //   );
  // }

  // Widget _addToOrders1(BuildContext context) {
  //   return Column(
  //     children: [
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'Item',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'SKU',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'Cost',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'Quantity',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'Line Total',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       Row(children: [
  //         Expanded(
  //           flex: 1,
  //           child: Text(
  //             'Amount',
  //           ),
  //         ),
  //         Expanded(
  //           flex: 1,
  //           child: Align(
  //             alignment: Alignment.centerRight,
  //             child: Text(
  //               'value',
  //             ),
  //           ),
  //         ),
  //       ]),
  //       SizedBox(
  //         height: 20,
  //       ),
  //       InkWell(
  //         child: Container(
  //           alignment: Alignment.center,
  //           padding: EdgeInsets.all(10),
  //           width: double.infinity,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5.0),
  //             color: Color(0xffcae3a8),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey.withOpacity(0.4),
  //                 spreadRadius: 1,
  //                 blurRadius: 1,
  //                 offset: Offset(1, 1), // changes position of shadow
  //               ),
  //             ],
  //           ),
  //           child: Text("Remove",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.w600, color: Colors.black)),
  //         ),
  //         onTap: () {
  //           setState(() {
  //             //selectButtonToAddToOrders = false;
  //             _controller.addToOrders.value = false;
  //           });
  //         },
  //       ),
  //     ],
  //   );
  // }

  ////
  Widget _totalAndConfirm(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
            flex: 1,
            child: Text(
              'Total',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'value',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        InkWell(
          child: Container(
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
            child: Text("Confirm Order",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black)),
          ),
          onTap: () {},
        ),
      ],
    );
  }
  ////

}
