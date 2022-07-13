import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget manubar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: const Text(
      'Dashboard',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 17,
      ),
    ),
    centerTitle: true,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      );
    }),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.add_alert_outlined,
          color: Colors.black,
        ),
        onPressed: () {
          Get.toNamed('/dashboard');
        },
      ),
    ],
    bottom: PreferredSize(
      child: Container(
        color: Color(0xffcae3a8),
        height: 3.0,
      ),
      preferredSize: Size.fromHeight(3.0),
    ),
    elevation: 4,
  );
}
