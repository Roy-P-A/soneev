import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'splash',
                child: Image.asset(
                  'assets/images/winemongerlogoimage.gif',
                  height: 279,
                  width: 279,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
