import 'package:get/get.dart';

import 'package:winemonger/controllers/app_controller.dart';
import 'package:winemonger/managers/hive/hive.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    checkIfUserLoggedin();

    super.onInit();
  }

  checkIfUserLoggedin() async {
    await Future.delayed(const Duration(milliseconds: 3000));

    final bool isAlreadyRun = await HiveHelper.to.isAppAlreadyRun();

    print(isAlreadyRun);
    if (isAlreadyRun) {
      AppController.to.loggedIn();
    } else {
      AppController.to.notLoggedIn();
    }
  }
}
