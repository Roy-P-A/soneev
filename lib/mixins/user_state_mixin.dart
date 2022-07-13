import 'package:winemonger/controllers/app_controller.dart';
import 'package:winemonger/managers/hive/hive.dart';

mixin UserStateMixin {
  logout() {
    HiveHelper.to.clearData().then((_) {
      AppController.to.loggedOut();
    });
  }
}
