import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin SnackbarMixin on GetxController {
  showErrorSnackbar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.red[400],
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
      borderRadius: 5,
    );
  }

  showSuccessSnackbar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.green[200],
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
      borderRadius: 5,
    );
  }
}
