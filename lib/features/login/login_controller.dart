//import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:hive/hive.dart';

class LoginController extends GetxController {
  final message = "".obs;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  onTappedSubmit() {
    _loginWithEmail();
  }

  _loginWithEmail() async {
    try {
      final response = await post(
          Uri.parse('https://admin.winemonger.com//api/login'),
          body: {
            'username': '${usernameController.text}',
            'password': '${passwordController.text}'
          });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        var cookies = response.headers['set-cookie'];

        var box = await Hive.openBox('myBox');
        await box.clear();
        await box.put('apikey', '${data['api_key']}');
        await box.put('firstname', '${data['firstname']}');
        await box.put('lastname', '${data['lastname']}');
        await box.put('userlevel', '${data['user_level']}');
        await box.put('cookie', '${cookies}');
        //print(data['api_key']);
        print(box.get('apikey'));
        print(box.get('firstname'));
        print(box.get('lastname'));
        print(box.get('userlevel'));
        print(box.get('cookie'));

        message.value = 'Login successfully';
        await Future.delayed(Duration(milliseconds: 1000), () {
          Get.offAllNamed("/dashboard");
        });
      } else {
        var data = jsonDecode(response.body.toString());
        message.value = data['message'].toString();
      }
    } catch (e) {
      print(e.toString());
      message.value = "Cannot login";
    }
  }
}
