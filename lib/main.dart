import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/controllers/app_controller.dart';
import 'package:winemonger/features/themecontroller.dart';

import 'package:winemonger/managers/hive/hive.dart';
import 'package:winemonger/repository/repository.dart';
import 'package:winemonger/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //hiveHelper();
  initialize();
  runApp(const MyApp());
}

void initialize() {
  Get.put<ApiRepository>(ApiRepositoryImpl(), permanent: true);
  Get.put(HiveHelper(), permanent: true);
  Get.put(AppController(), permanent: true);
  Get.put(ThemeController(), permanent: true);
  Get.put(ColorController(), permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Winemonger',
      debugShowCheckedModeBanner: false,
      //theme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      navigatorObservers: [NavigatorObserverWithOrientation()],
      initialRoute: '/',
      getPages: routes(),
    );
  }
}
