import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/dashboard/dashboard_controller.dart';
import 'package:winemonger/features/drawer/drawer.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:badges/badges.dart';
import 'package:winemonger/utils/theme/theme.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorController _colorcontroller = Get.put(ColorController());
    return Obx(
      () => Scaffold(
        //backgroundColor: Color(0xfff8f8f8),
        backgroundColor: _colorcontroller.backcolor.value,
        appBar: AppBar(
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
          elevation: 0,
        ),
        drawer: Drawer1(),
        body: SafeArea(
          child: Container(
            padding:
                const EdgeInsets.only(left: 38, right: 38, top: 27, bottom: 0),
            child: GridView.builder(
              itemCount: DashboardList().dashboardList.length,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(
                        '${DashboardList().dashboardList[index].linkToPage}');
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                '${DashboardList().dashboardList[index].icon}',
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "${DashboardList().dashboardList[index].title}",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            (DashboardList().dashboardList[index].image == null)
                                ? Container()
                                : Container(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, top: 4, bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7),
            ),
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
          elevation: 20,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.white,
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
      ),
    );
  }
}
