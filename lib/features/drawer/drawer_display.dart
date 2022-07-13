import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/drawer/drawer1_controller.dart';
import 'package:winemonger/features/themecontroller.dart';
import 'package:winemonger/mixins/user_state_mixin.dart';
import 'package:flutter_svg/flutter_svg.dart';

/////
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi_light.dart';

import 'package:iconify_flutter/icons/ph.dart';

import 'package:iconify_flutter/icons/healthicons.dart';

class Drawer1 extends StatelessWidget with UserStateMixin {
  Drawer1({Key? key}) : super(key: key);
  final DrawerController1 _controller = Get.put(DrawerController1());
  final ThemeController _controller1 = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 292,
        child: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          title: Obx(
                            () => Text(
                              "${_controller.firstname} ${_controller.lastname}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          subtitle: Obx(() => Text(
                                "${_controller.userlevel == "100" ? "Admin" : _controller.userlevel == "80" ? "Manager" : _controller.userlevel == "" ? "" : "Sales Representative"}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              )),
                          leading: Iconify(
                            Healthicons.ui_user_profile_outline,
                            size: 50,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xff999999),
                          indent: 20.0,
                          endIndent: 20.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    'assets/svgs/drawer/orders.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Orders",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/orders');
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Iconify(MdiLight.cart)),
                                SizedBox(
                                  width: 11,
                                ),
                                Text("Offers",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    'assets/svgs/drawer/tastings.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Tastings",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/tastings');
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    'assets/svgs/drawer/products.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Products",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/products');
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: SvgPicture.asset(
                                    'assets/svgs/drawer/sales.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Sales",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/sales');
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    'assets/svgs/drawer/customers.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Customer",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/customers');
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    'assets/svgs/drawer/imports.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Imports",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Get.toNamed('/imports');
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 10, top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Iconify(MdiLight.logout)),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  "Logout",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            logout();
                          },
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       left: 20, right: 10, top: 10, bottom: 10),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //           height: 20,
                        //           width: 20,
                        //           child: Iconify(Ph.moon_light)),
                        //       SizedBox(
                        //         width: 11,
                        //       ),
                        //       // Text(
                        //       //   "DarkMode",
                        //       //   style: TextStyle(fontWeight: FontWeight.w500),
                        //       // ),
                        //       // SizedBox(
                        //       //   width: 11,
                        //       // ),
                        //       // Obx(
                        //       //   () => Switch(
                        //       //     value: _controller1.isdark.value,
                        //       //     onChanged: (state) {
                        //       //       _controller1.changeTheme(state);
                        //       //     },
                        //       //     activeTrackColor: Colors.black38,
                        //       //     activeColor: Colors.black,
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
