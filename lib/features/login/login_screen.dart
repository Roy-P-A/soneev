import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/login/login_controller.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Obx(
                () => Container(
                  padding: const EdgeInsets.all(27),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Hero(
                          tag: 'splash',
                          child: Image(
                              width: 219,
                              height: 219,
                              image: AssetImage(
                                  'assets/images/winemongerlogo.png')),
                        ),
                        const SizedBox(
                          height: 72,
                        ),
                        _username(context),
                        SizedBox(
                          height: 21,
                        ),
                        _password(context),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          child: (controller.message == "Login successfully")
                              ? Text(
                                  '${controller.message}',
                                  style: TextStyle(
                                    color: Colors.green.shade400,
                                  ),
                                )
                              : (controller.message == "")
                                  ? Container()
                                  : Text(
                                      '${controller.message}',
                                      style: TextStyle(
                                        color: Colors.red.shade400,
                                      ),
                                    ),
                        ),
                        _submitButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget _username(BuildContext context) {
    final LoginController _controller = Get.find();
    return TextFormField(
      controller: _controller.usernameController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(13),
        hintText: 'Username',
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      textInputAction: TextInputAction.next,
    );
  }

  Widget _password(BuildContext context) {
    final LoginController _controller = Get.find();
    return TextFormField(
      controller: _controller.passwordController,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(13),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      textInputAction: TextInputAction.next,
    );
  }

  Widget _submitButton(BuildContext context) {
    final LoginController _controller = Get.find();
    return Container(
      margin: const EdgeInsets.all(15),
      child: ElevatedButton(
        child: const Text(
          "Log in",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffcae3a8),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        ),
        onPressed: () {
          print('buttonpressed');
          _controller.onTappedSubmit();
        },
      ),
    );
  }
}
