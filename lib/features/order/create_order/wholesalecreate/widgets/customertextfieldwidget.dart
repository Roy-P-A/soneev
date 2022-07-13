import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class CustomerFieldTextWidget extends StatefulWidget {
  CustomerFieldTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomerFieldTextWidget> createState() =>
      _CustomerFieldTextWidgetState();
}

class _CustomerFieldTextWidgetState extends State<CustomerFieldTextWidget> {
  //final TextEditingController typeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final WholesaleCreateController _controller = Get.find();

    return Obx(
      () => Form(
        key: _controller.formKey1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Customer"),
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
                controller: _controller.customerController.value,
                autofocus: true,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffdfdfdf))),
                    hintText: "Select customer",
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
                await _controller.customerDetailListApi(value);
                List<User> addresses = <User>[];

                for (int i = 0;
                    i <
                        _controller.orderWholesaleCustomerModelEntity.value
                            .data1.length;
                    i++) {
                  addresses.add(
                    User(
                        _controller.orderWholesaleCustomerModelEntity.value
                                .data1[i].customerId ??
                            " ",
                        _controller.orderWholesaleCustomerModelEntity.value
                                .data1[i].companyName ??
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
              ///////////////////
              validator: (value) {
                return _controller.customerNameValidator(value!);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              ////////////
              onSuggestionSelected: (User address) async {
                _controller.customerController.value.text =
                    address.name as String;
                _controller.customerController1.value.text =
                    address.id as String;

                print(_controller.customerController.value.text);
                print(_controller.customerController1.value.text);
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
