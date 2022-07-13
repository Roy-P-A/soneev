import 'dart:convert';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:winemonger/models/ordermodel/order_detail_model.dart';

class OrdersDetailController extends GetxController {
  final isInitialized = false.obs;
  http.Client client = RetryClient(http.Client());
  var globalEntity = OrderDetailModel(
    customers: Customers(
      billingAddress: BillingAddress(),
      shippingAddress: BillingAddress(),
    ),
    orderPayment: OrderPayment(),
    orderStatus: OrderStatus(),
    orderStatusHistories: List<OrderStatusHistories>.empty(growable: true),
    orderShipments: List<OrderShipments>.empty(growable: true),
    orderLines: List<OrderLines>.empty(growable: true),
  ).obs;
  final orderId = "".obs;

  @override
  void onInit() {
    orderId.value = Get.arguments['orderId'];
    print("hELLO ${orderId.value}");
    orderDetailListApi();
    super.onInit();
  }

  Future<void> orderDetailListApi() async {
    var box = await Hive.openBox('myBox');
    String apikey = box.get('apikey');
    var _baseUrl = 'admin.winemonger.com';
    var endpoint = 'api/view/orders';
    var headers = {"APIKEY": apikey};
    var params = {'id': '${orderId.value}'};
    var url = Uri.https(_baseUrl, endpoint);
    try {
      var response =
          await client.post(url, headers: headers, body: jsonEncode(params));
      print(response);
      if (response.statusCode == 200) {
        globalEntity.value =
            OrderDetailModel.fromJson(jsonDecode(response.body));
        isInitialized.value = true;
        print('HELLO');
        print(globalEntity.value.toJson());
      } else {
        print('HI');
        throw Exception('Failed to load album');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
