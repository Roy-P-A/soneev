import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:winemonger/mixins/user_state_mixin.dart';

class DrawerController1 extends GetxController with UserStateMixin {
  final firstname = "".obs;
  final lastname = "".obs;
  final userlevel = "".obs;

  @override
  void onInit() {
    super.onInit();
    getuserdetails();
  }

  Future<void> getuserdetails() async {
    var box = await Hive.openBox('myBox');
    firstname.value = box.get('firstname');
    lastname.value = box.get('lastname');
    userlevel.value = box.get('userlevel');
  }
}
