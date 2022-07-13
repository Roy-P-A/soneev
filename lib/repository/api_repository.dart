import 'package:get/get.dart';
import 'package:winemonger/managers/api/api.dart';

import 'package:winemonger/models/dto/api_dtos/orders/order_screen/order_screen.dart';

import 'package:winemonger/models/ordermodel/order_model.dart';

abstract class ApiRepository extends GetxController {
  static ApiRepository get to => Get.find();

  Future<OrderModel> fetchOrders({required OrderScreenRequest request});
}

class ApiRepositoryImpl extends GetxController implements ApiRepository {
  final _helper = ApiBaseHelper();

  @override
  Future<OrderModel> fetchOrders({required OrderScreenRequest request}) async {
    final response = await _helper.get(
        endpoint: ApiEndPoints.orderPage,
        params: request.toMap(),
        headers: request.getHeader());
    return OrderModel.fromJson(response);
  }
}
