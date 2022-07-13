import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class User {
  const User(this.id, this.name);

  final String id;
  final String name;
}

class ManufacturerTextField extends StatefulWidget {
  const ManufacturerTextField({Key? key}) : super(key: key);

  @override
  State<ManufacturerTextField> createState() => _ManufacturerTextFieldState();
}

class _ManufacturerTextFieldState extends State<ManufacturerTextField> {
  final WholesaleCreateController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [_manufacturertextfield(context)],
      ),
    );
  }
}

Widget _manufacturertextfield(BuildContext context) {
  final WholesaleCreateController _controller = Get.find();
  List<User> users = <User>[User("0", "Select Manufacturer")];
  for (int i = 0;
      i <
          _controller
              .orderWholesaleFilterManufacturerModelEntity.value.data3.length;
      i++) {
    users.add(
      User(
          _controller.orderWholesaleFilterManufacturerModelEntity.value.data3[i]
                  .manId ??
              " ",
          _controller.orderWholesaleFilterManufacturerModelEntity.value.data3[i]
                  .manName ??
              " "),
    );
  }
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Manufaturer"),
      SizedBox(
        height: 10,
      ),
      Form(
        key: _controller.formKey3,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField2(
            isExpanded: true,
            hint: Text("Select Manufacturer"),
            decoration: InputDecoration(
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
            value: _controller.manufacturerselected.value,
            onChanged: (value) async {
              _controller.setSelected1(value as String);
              await _controller.filterProductApi();
              print(_controller.manufacturerselected.value);
            },
            validator: (value) {
              return _controller.manufacturerNameValidator(value! as String);
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
            ),
            dropdownElevation: 4,
            scrollbarRadius: const Radius.circular(2),
            scrollbarThickness: 4,
            scrollbarAlwaysShow: true,
          ),
        ),
      ),
    ],
  );
}


//  Widget _manufacturertextfield(BuildContext context) {
//     String? selectedValue;
//     List<String> items = [
//       'Item1',
//       'Item2',
//       'Item3',
//       'Item4',
//       'Item5',
//       'Item6',
//       'Item7',
//       'Item8',
//     ];
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text("Manufaturer"),
//         SizedBox(
//           height: 10,
//         ),
//         DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             isExpanded: true,
//             hint: Text("Select Manufacturer"),
//             items: items
//                 .map((item) => DropdownMenuItem<String>(
//                       value: item,
//                       child: Text(
//                         item,
//                         style: const TextStyle(
//                           color: Colors.black,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ))
//                 .toList(),
//             value: selectedValue,
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value as String;
//               });
//             },
//             icon: const Icon(
//               Icons.keyboard_arrow_down,
//             ),
//             iconSize: 20,
//             iconEnabledColor: Colors.grey,
//             iconDisabledColor: Colors.grey,
//             buttonHeight: 52,
//             //buttonWidth: 160,
//             buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//             buttonDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               border: Border.all(
//                 color: Colors.black,
//               ),
//               color: Colors.white,
//             ),
//             //buttonElevation: 0,
//             itemHeight: 40,
//             itemPadding: const EdgeInsets.only(left: 14, right: 14),
//             dropdownMaxHeight: 200,

//             dropdownPadding: null,
//             dropdownDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(2),
//             ),
//             dropdownElevation: 4,
//             scrollbarRadius: const Radius.circular(2),
//             scrollbarThickness: 4,
//             scrollbarAlwaysShow: true,
//             //offset: const Offset(-20, 0),
//           ),
//         ),
//       ],
//     );
//   }

