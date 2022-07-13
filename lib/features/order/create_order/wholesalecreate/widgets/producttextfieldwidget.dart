import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class ProductTextFieldtWidget extends StatefulWidget {
  ProductTextFieldtWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductTextFieldtWidget> createState() =>
      _ProductTextFieldtWidgetState();
}

class _ProductTextFieldtWidgetState extends State<ProductTextFieldtWidget> {
  //final TextEditingController typeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final WholesaleCreateController _controller = Get.find();
    // List<String> states = ['Select Customer'];
    // for (int i = 0;
    //     i < _controller.orderWholesaleCustomerModelEntity.value.data!.length;
    //     i++) {
    //   states.add(
    //     _controller
    //             .orderWholesaleCustomerModelEntity.value.data![i].companyName ??
    //         " ",
    //   );
    // }

    // List<User> states = <User>[];
    // for (int i = 0;
    //     i < _controller.OrderWholesaleWarehousesModelEntity.value.data!.length;
    //     i++) {
    //   states.add(
    //     User(
    //         _controller.OrderWholesaleWarehousesModelEntity.value.data![i]
    //                 .warehouseId ??
    //             " ",
    //         _controller.OrderWholesaleWarehousesModelEntity.value.data![i]
    //                 .warehouseName ??
    //             " "),
    //   );
    // }

    // List<String> getSuggestions(String query) {
    //   print(_controller.customerController.text);
    //   print(_controller.customerController1.text);
    //   List<String> matches = [];
    //   matches.addAll(states);
    //   matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    //   return matches;
    // }

    //  List<String> getSuggestions(String query) {
    //   print(_controller.customerController.text);
    //   print(_controller.customerController1.text);
    //   // List<String> matches = [];
    //   // matches.addAll(states);
    //   // matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    //   return states;
    // }

    return Obx(
      () => Form(
        key: _controller.formKey4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product"),
            SizedBox(
              height: 10,
            ),
            TypeAheadFormField(
              minCharsForSuggestions: 1,
              hideSuggestionsOnKeyboardHide: true,
              //keepSuggestionsOnLoading: false,
              //getImmediateSuggestions: false,
              //keepSuggestionsOnSuggestionSelected: false,
              suggestionsBoxVerticalOffset: 0.0,
              noItemsFoundBuilder: (context) => const SizedBox(
                height: 50,
                child: Center(
                  child: Text('No item found'),
                ),
              ),

              textFieldConfiguration: TextFieldConfiguration(
                controller: _controller.productController.value,
                autofocus: true,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffdfdfdf))),
                    hintText: "Select Product",
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.only(top: 1, right: 10, left: 10, bottom: 1),
                    fillColor: Colors.white,
                    filled: true),
              ),
              suggestionsBoxDecoration: SuggestionsBoxDecoration(
                  color: Colors.white,
                  elevation: 4.0,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4))),
              debounceDuration: Duration(microseconds: 400),
              suggestionsCallback: (value) async {
                List<User> addresses = <User>[];
                for (int i = 0;
                    i <
                        _controller.orderWholesaleFilterProductModelEntity.value
                            .data4.data5.length;
                    i++) {
                  addresses.add(
                    User(
                        _controller.orderWholesaleFilterProductModelEntity.value
                                .data4.data5[i].id ??
                            " ",
                        _controller.orderWholesaleFilterProductModelEntity.value
                                .data4.data5[i].name ??
                            " "),
                  );
                }
                return addresses;
              },
              itemBuilder: (context, User address) {
                return Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Text(
                          '${address.name}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                );
              },
              validator: (value) {
                return _controller.productNameValidator(value!);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,

              onSuggestionSelected: (User address) async {
                _controller.productController.value.text =
                    address.name as String;
                _controller.productController1.value.text =
                    address.id as String;
                print(_controller.productController.value.text);
                print(_controller.productController1.value.text);
              },
            )
          ],
        ),
      ),
    );
  }
}

class User {
  const User(this.id, this.name);

  final String id;
  final String name;
}

//
// Widget _customerfield(BuildContext context) {
//   print(userSelected);
//   //print(selectedValue);
//   List<String> states = [
//     'Select an Option',
//   ];
//   for (int i = 0;
//       i < _controller.orderWholesaleCustomerModelEntity.value.data!.length;
//       i++) {
//     states.add(_controller
//             .orderWholesaleCustomerModelEntity.value.data![i].companyName ??
//         " ");
//   }

//   // final List<String> states = [
//   //   "dfgg",
//   //   "ggbbgb",
//   // ];

//   List<String> getSuggestions(String query) {
//     List<String> matches = [];
//     matches.addAll(states);
//     matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
//     return matches;
//   }

//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text("Customer"),
//       SizedBox(
//         height: 10,
//       ),
//       TypeAheadField(
//         minCharsForSuggestions: 1,

//         hideSuggestionsOnKeyboardHide: true,
//         //keepSuggestionsOnLoading: false,
//         //getImmediateSuggestions: false,
//         //keepSuggestionsOnSuggestionSelected: false,
//         suggestionsBoxVerticalOffset: 0.0,
//         noItemsFoundBuilder: (context) => const SizedBox(
//           height: 50,
//           child: Center(
//             child: Text('No item found'),
//           ),
//         ),

//         textFieldConfiguration: TextFieldConfiguration(
//           controller: _typeAheadController,
//           autofocus: true,
//           decoration: InputDecoration(
//               focusColor: Colors.white,
//               focusedBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.blue)),
//               border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Color(0xffdfdfdf))),
//               hintText: "Select customer",
//               hintStyle: const TextStyle(color: Colors.grey),
//               contentPadding:
//                   EdgeInsets.only(top: 1, right: 10, left: 10, bottom: 1),
//               fillColor: Colors.white,
//               filled: true),
//         ),
//         suggestionsBoxDecoration: SuggestionsBoxDecoration(
//             color: Colors.white,
//             elevation: 4.0,
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(4),
//                 bottomRight: Radius.circular(4))),
//         debounceDuration: Duration(microseconds: 400),
//         suggestionsCallback: (value) async {
//           return getSuggestions(value);
//         },
//         itemBuilder: (context, suggestion) {
//           return Row(
//             children: [
//               const SizedBox(
//                 width: 10,
//               ),
//               Flexible(
//                 child: Padding(
//                   padding: EdgeInsets.all(14),
//                   child: Text(
//                     '${suggestion}',
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               )
//             ],
//           );
//         },

//         onSuggestionSelected: (suggestion) {
//           setState(() {
//             _typeAheadController.text = suggestion as String;
//           });
//         },
//       )
//     ],
//   );
// }

