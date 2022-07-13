import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isdark = false.obs;
  dynamic get dark => isdark.value;

  void changeTheme(state) {
    if (state == true) {
      isdark.value = true;
      Get.changeTheme(ThemeData.dark());
    } else {
      isdark.value = false;
      Get.changeTheme(ThemeData.light());
    }
    update();
  }
}
