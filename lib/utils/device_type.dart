import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

enum DeviceType { phone, tablet }

DeviceType getDeviceType(BuildContext context) {
  var shortestSide = MediaQuery.of(context).size.shortestSide;
  var isMobile = shortestSide < 600;
  if (isMobile) {
    return DeviceType.phone;
  }
  return DeviceType.tablet;
}

DeviceType getDeviceTypeGetx() {
  var shortestSide = MediaQuery.of(Get.context!).size.shortestSide;
  var isMobile = shortestSide < 600;
  if (isMobile) {
    return DeviceType.phone;
  }
  return DeviceType.tablet;
}
