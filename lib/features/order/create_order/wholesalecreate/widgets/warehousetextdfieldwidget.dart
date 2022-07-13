import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class WarehouseTextField extends StatefulWidget {
  WarehouseTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<WarehouseTextField> createState() => _WarehouseTextFieldState();
}

class _WarehouseTextFieldState extends State<WarehouseTextField> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          _warehousetextfield(context),
        ],
      ),
    );
  }
}

Widget _warehousetextfield(BuildContext context) {
  final WholesaleCreateController _controller = Get.find();
  List<User> users = <User>[User("0", "Select Warehouse")];

  for (int i = 0;
      i < _controller.OrderWholesaleWarehousesModelEntity.value.data2.length;
      i++) {
    users.add(
      User(
          _controller.OrderWholesaleWarehousesModelEntity.value.data2[i]
                  .warehouseId ??
              " ",
          _controller.OrderWholesaleWarehousesModelEntity.value.data2[i]
                  .warehouseName ??
              " "),
    );
  }
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Warehouse"),
      SizedBox(
        height: 10,
      ),

      Form(
        key: _controller.formKey2,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField2(
            isExpanded: true,

            // hint: Text("Select Warehouse"),
            // style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
            // hint

            decoration: InputDecoration(
              //helperText: ,
              hintText: "Select Warehouse",
              hintStyle: TextStyle(color: Color.fromARGB(255, 223, 222, 222)),

              isDense: false,
              contentPadding:
                  EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            items: users
                .map((item) => DropdownMenuItem<String>(
                      value: item.id,
                      child: Text(
                        item.name,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            onChanged: (value) async {
              _controller.setSelected(value as String);

              await _controller.filterManufacturerApi();
              print(_controller.warehouseselected.value);
            },
            value: _controller.warehouseselected.value,
            validator: (value) {
              return _controller.warehouseNameValidator(value! as String);
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            icon: const Icon(
              Icons.keyboard_arrow_down,
            ),
            iconSize: 20,

            iconEnabledColor: Colors.grey,
            iconDisabledColor: Colors.grey,
            buttonHeight: 52,

            itemHeight: 40,
            itemPadding: const EdgeInsets.only(left: 14, right: 14),
            dropdownMaxHeight: 200,
            dropdownPadding: null,

            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(color: Colors.transparent, width: 0),
            ),
            dropdownElevation: 4,
            scrollbarRadius: const Radius.circular(2),
            scrollbarThickness: 4,
            scrollbarAlwaysShow: true,
          ),
        ),
      ),

      ///
    ],
  );
}

class User {
  const User(this.id, this.name);

  final String id;
  final String name;
}

///
  // Widget _warehousetextfield(BuildContext context) {
  //   print(selectedValue);
  //   List<String> warehouseitems = [
  //     'Select Warehouse',
  //   ];
  //   for (int i = 0;
  //       i < _controller.OrderWholesaleWarehousesModelEntity.value.data!.length;
  //       i++) {
  //     warehouseitems.add(_controller.OrderWholesaleWarehousesModelEntity.value
  //             .data![i].warehouseName ??
  //         " ");
  //   }

  //   // List<String> items = [
  //   //   'Item1',
  //   //   'Item2',
  //   //   'Item3',
  //   //   'Item4',
  //   //   'Item5',
  //   //   'Item6',
  //   //   'Item7',
  //   //   'Item8',
  //   // ];
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text("Warehouse"),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       // for (int i = 0;
  //       //     i <
  //       //         _controller
  //       //             .OrderWholesaleWarehousesModelEntity.value.data!.length;
  //       //     i++)
  //       DropdownButtonHideUnderline(
  //         child: DropdownButton2(
  //           isExpanded: true,
  //           hint: Text("Select Warehouse"),
  //           items: warehouseitems
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
  //           onChanged: (value) {
  //             setState(() {
  //               selectedValue = value as String;
  //             });
  //           },
  //           value: selectedValue,
  //           icon: const Icon(
  //             Icons.keyboard_arrow_down,
  //           ),
  //           iconSize: 20,
  //           iconEnabledColor: Colors.grey,
  //           iconDisabledColor: Colors.grey,
  //           buttonHeight: 52,
  //           buttonPadding: const EdgeInsets.only(left: 14, right: 14),
  //           buttonDecoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5),
  //             border: Border.all(
  //               color: Colors.black,
  //             ),
  //             color: Colors.white,
  //           ),
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
  //         ),
  //       ),

  //       ///
  //     ],
  //   );
  // }

