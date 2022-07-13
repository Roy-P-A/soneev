import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/themecontroller.dart';

final ThemeController _controller = Get.put(ThemeController());

class ColorController extends GetxController {
  var backcolor =
      (_controller.isdark.value ? Color(0xfff8f8f8) : Color(0xfff8f8f8)).obs;
}
