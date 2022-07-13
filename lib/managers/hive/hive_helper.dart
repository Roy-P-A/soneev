import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:winemonger/models/user_model.dart';

class HiveHelper extends GetxController {
  static HiveHelper get to => Get.find();
  @override
  void onInit() {
    //hiveHelper();
    super.onInit();
  }

  hiveHelper() async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
      Hive.registerAdapter(UserModelAdapter());
    }

    await Hive.openBox('myBox');
  }

  Future<bool> isAppAlreadyRun() async {
    await hiveHelper();
    var settingsBox = await Hive.openBox('myBox');

    final isAlreadyRun = settingsBox.get('apikey');
    if (isAlreadyRun != null) {
      return true;
    }
    return false;
  }

  clearData() async {
    Box apiKeyBox = await Hive.openBox('myBox');
    await apiKeyBox.clear();
  }
}
