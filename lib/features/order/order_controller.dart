import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:winemonger/mixins/snackbar_mixin.dart';
import 'package:winemonger/models/dto/api_dtos/orders/order_screen/order_screen.dart';
import 'package:winemonger/models/ordermodel/order_model.dart';
import 'package:winemonger/repository/repository.dart';

class OrdersController extends GetxController with SnackbarMixin {
  http.Client client = RetryClient(http.Client());
  var orderModelEntity = OrderModel(data: List<Data>.empty(growable: true)).obs;
  final ScrollController scrollController = ScrollController();

  final bulklist = Rx<List<Data>>([]);

  var count = 1.obs;
  var count1 = 10.obs;
  var count2 = 1.obs;

  increment() => count++;
  // decrement() => count--;
  final isInitialized = false.obs;
  @override
  void onInit() {
    bulklistApi();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int totalpages() {
    if (orderModelEntity.value.totalNoItems != null) {
      return (int.parse(orderModelEntity.value.totalNoItems!) / 10).toInt();
    }
    return 10;
  }

  Future<void> bulklistApi() async {
    if (count1.value <= totalpages()) {
      for (int j = count2.value; j < count1.value; j++) {
        //await Future.delayed(Duration(seconds: 1));
        await orderlistApi(j);

        for (int k = 0; k < orderModelEntity.value.data.length; k++) {
          bulklist.value.add(orderModelEntity.value.data[k]);
        }
        increment();
        update();
      }
      count2.value = count1.value;
    }
  }

  Future<void> orderlistApi(value) async {
    isInitialized.value = false;
    var box = await Hive.openBox('myBox');
    String apikey = box.get('apikey');
    try {
      final request = OrderScreenRequest(
        apikey: apikey,
        //pagenumber: count.value + 1,
        pagenumber: value,
      );
      //print("dddd ${count.value + 1}");

      orderModelEntity.value =
          await ApiRepository.to.fetchOrders(request: request);
      print(orderModelEntity.value.toJson());

      isInitialized.value = true;
    } catch (e) {
      showErrorSnackbar(title: "Error", message: e.toString());
    }
    update();
  }
}
