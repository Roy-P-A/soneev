import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/dashboard/dashboard_controller.dart';
import 'package:winemonger/features/drawer/drawer.dart';
import 'package:winemonger/features/widgets/appbar.dart';
import 'package:winemonger/utils/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:badges/badges.dart';

class ReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Reservations',
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
          Badge(
            //position: BadgePosition.topEnd(top: 14, end: 12),
            child: IconButton(
              icon: Iconify(Uiw.bell),
              onPressed: () {},
            ),
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
      ),
      drawer: Drawer1(),
      body: SafeArea(
        child: Container(
          child: Center(child: Text('Coming soon')),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(
          Icons.add,
          size: 49,
        ),
        backgroundColor: Color(0xff717f5e),
        onPressed: () {
          Get.toNamed("/createorders");
        },
      ),
      ////

      ///dfdf
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/svgs/home.svg',
                        ),
                      ),
                      onTap: () {
                        Get.offAllNamed('/dashboard');
                      }),
                  InkWell(
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/svgs/view.svg',
                        ),
                      ),
                      onTap: () {
                        Get.toNamed('/orders');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
