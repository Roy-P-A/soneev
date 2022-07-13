import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_controller.dart';

class User {
  const User(this.id, this.name);

  final String id;
  final String name;
}

class AdjustmentWidget extends StatefulWidget {
  const AdjustmentWidget({Key? key}) : super(key: key);

  @override
  State<AdjustmentWidget> createState() => _AdjustmentWidgetState();
}

class _AdjustmentWidgetState extends State<AdjustmentWidget> {
  final WholesaleCreateController _controller = Get.find();
  Map<String, String> map1 = {
    '1': '-',
    '2': '-',
    '3': '-',
    '4': '-',
    '5': '-',
    '6': '-',
    '7': '+',
    '8': '+',
    '9': '+',
    '10': '+',
    '12': '+',
    '13': '+',
    '14': '+',
    '15': '+',
  };
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: _controller.formKey6,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            //_skutextfield(context),
            SizedBox(
              height: 10,
            ),
            _costtextfield(context),
            SizedBox(
              height: 10,
            ),
            _quantitytextfield(context),
            SizedBox(
              height: 10,
            ),
            _addButton(context),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  ////
  Widget _costtextfield(BuildContext context) {
    final WholesaleCreateController _controller = Get.find();
    List<User> users = <User>[User("0", "Select Adjustments")];

    for (int i = 0;
        i <
            _controller
                .orderWholesaleAdjustmentListModelEntity.value.data9.length;
        i++) {
      users.add(
        User(
            _controller.orderWholesaleAdjustmentListModelEntity.value.data9[i]
                    .adjustmentSkuId ??
                " ",
            _controller.orderWholesaleAdjustmentListModelEntity.value.data9[i]
                    .adjustmentSkuDescription ??
                " "),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0;
            i <
                _controller
                    .orderWholesaleAdjustmentListModelEntity.value.data9.length;
            i++)
          if (_controller.adjustmentselected.value ==
              _controller.orderWholesaleAdjustmentListModelEntity.value.data9[i]
                  .adjustmentSkuId)
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
                      "${_controller.orderWholesaleAdjustmentListModelEntity.value.data9[i].adjustmentSku}"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Cost"),
                SizedBox(
                  height: 10,
                ),
              ],
            ),

        DropdownButtonHideUnderline(
          child: DropdownButtonFormField2(
            isExpanded: true,
            hint: Text("Select Adjustments"),
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
            onChanged: (value) async {
              _controller.setSelected2(value as String);

              // await _controller.filterManufacturerApi();
              print(_controller.adjustmentselected.value);
            },
            value: _controller.adjustmentselected.value,
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

        ///
      ],
    );
  }

  ////
  Widget _quantitytextfield(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0;
            i <
                _controller
                    .orderWholesaleAdjustmentListModelEntity.value.data9.length;
            i++)
          if (_controller.adjustmentselected.value ==
              _controller.orderWholesaleAdjustmentListModelEntity.value.data9[i]
                  .adjustmentSkuId)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Quantity"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 6,
                        child: TextFormField(
                          controller: _controller.quantityController1.value,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (double.tryParse(_controller
                                    .quantityController1.value.text) ==
                                false) {
                              return 'Please enter a number';
                            } else if (_controller
                                .quantityController1.value.text.isEmpty) {
                              return 'Please enter a number';
                            }
                            //return 'Please enter a number';
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
      ],
    );
  }

  Widget _addButton(BuildContext context) {
    return Column(
      children: [
        for (int i = 0;
            i <
                _controller
                    .orderWholesaleAdjustmentListModelEntity.value.data9.length;
            i++)
          if (_controller.adjustmentselected.value ==
              _controller.orderWholesaleAdjustmentListModelEntity.value.data9[i]
                  .adjustmentSkuId)
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
                child: Text("Add",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black)),
              ),
              onTap: () {
                for (final mapEntry in map1.entries) {
                  final key = mapEntry.key;
                  final value = mapEntry.value;
                  //print('Key: $key, Value: $value');
                  if (_controller.adjustmentselected.value == key) {
                    print("hello ${key}");
                    print("hello ${value}");
                    _controller.addAdjustmentOrder(value);
                  }
                  // Key: a, Value: 1 ...
                }

                // setState(() {
                //   _controller.addToOrders1.value = true;
                //   _controller.addadjustments.value = false;
                // });
              },
            ),
      ],
    );
  }
}
