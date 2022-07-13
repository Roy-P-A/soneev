// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// mixin DialogMixin on GetxController {
//   showConfirmDialog(
//       {required String title,
//       required String message,
//       String? confirmTitle,
//       VoidCallback? onConfirm,
//       VoidCallback? onCancel}) {
//     _confirm() {
//       onConfirm != null ? onConfirm() : null;
//       Get.back();
//     }

//     Get.defaultDialog(
//       title: title,
//       onConfirm: _confirm,
//       textConfirm: confirmTitle ?? "Ok",
//       onCancel: onCancel,
//       textCancel: "Cancel",
//       middleText: message,
//     );
//   }

//   showNotificationDialog({required String title, required String message}) {
//     _confirm() {
//       Get.back();
//     }

//     Get.defaultDialog(
//       title: title,
//       onConfirm: _confirm,
//       textConfirm: "Ok",
//       middleText: message,
//     );
//   }

//   showActionDialog(
//       {required String title,
//       required String message,
//       required String primaryTitle,
//       required String secondaryTitle,
//       VoidCallback? primaryAction,
//       VoidCallback? secondaryAction}) {
//     _primaryAction() {
//       primaryAction != null ? primaryAction() : null;
//       Get.back();
//     }

//     _seconadryAction() {
//       secondaryAction != null ? secondaryAction() : null;
//       Get.back();
//     }

//     Get.defaultDialog(
//       title: title,
//       onConfirm: _primaryAction,
//       textConfirm: primaryTitle,
//       onCancel: _seconadryAction,
//       textCancel: secondaryTitle,
//       middleText: message,
//     );
//   }
// }
