import 'package:get/get.dart';
import 'package:winemonger/features/login/login_screen.dart';

enum LoggedStatus { loggedInitial, notLoggedIn, loggedIn }

class AppController extends GetxController {
  static AppController get to => Get.find();
  final isLogged = LoggedStatus.loggedInitial.obs;

  @override
  onInit() {
    super.onInit();
    ever(isLogged, _fireRoute);
  }

  _fireRoute(logged) async {
    if (logged == LoggedStatus.loggedIn) {
      Get.offAllNamed("/dashboard");
    } else if (logged == LoggedStatus.notLoggedIn) {
      Get.to(
        LogIn(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 3000),
      );
    }
  }

  loggedIn() {
    print('loggedIn');
    isLogged.value = LoggedStatus.loggedIn;
  }

  notLoggedIn() {
    print('notloggedIn');
    isLogged.value = LoggedStatus.notLoggedIn;
  }

  loggedOut() {
    print('loggedOut');
    //isLogged.value = LoggedStatus.notLoggedIn;
    Get.offAllNamed('/login');
  }
}
