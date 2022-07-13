import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winemonger/features/drawer/drawer.dart';
import 'package:winemonger/features/order/order_controller.dart';
import 'package:winemonger/features/order/orderlist.dart';
import 'package:winemonger/utils/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uiw.dart';

class OrdersScreen extends StatefulWidget {
  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  //final controller = PageController(initialPage: 0);
  final OrdersController _controller = Get.put(OrdersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'View Orders',
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
      // body: Obx(
      //   () => Column(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(left: 45, right: 45, top: 30, bottom: 0),
      //         child: _searchbar(context),
      //       ),
      //       Flexible(
      //         fit: FlexFit.tight,
      //         child: Scrollbar(
      //           isAlwaysShown: true,
      //           child: PageView.builder(
      //             padEnds: false,
      //             physics: ClampingScrollPhysics(),
      //             scrollDirection: Axis.vertical,
      //             controller: controller,
      //             itemBuilder: (context, position) {
      //               _controller.count.value = position;
      //               //_controller.orderlistApi();
      //               return OrderList();
      //             },
      //             itemCount:
      //                 _controller.orderModelEntity.value.totalNoItems != null
      //                     ? (int.parse(_controller
      //                                 .orderModelEntity.value.totalNoItems!) /
      //                             10)
      //                         .toInt()
      //                     : 1,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      body: Obx(
        () => Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 45, right: 45, top: 30, bottom: 0),
              child: _searchbar(context),
            ),
            _controller.count.value == 1 ? Container() : Container(),
            Expanded(
              child: OrderList(),
            ),
          ],
        ),
      ),

      // body: Obx(
      //   () => Column(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(left: 45, right: 45, top: 30, bottom: 0),
      //         child: _searchbar(context),
      //       ),
      //       Flexible(
      //         fit: FlexFit.tight,
      //         child: PageView.builder(
      //           padEnds: false,
      //           physics: ClampingScrollPhysics(),
      //           scrollDirection: Axis.vertical,
      //           //controller: controller,
      //           itemBuilder: (context, position) {
      //             // _controller.count.value = position;
      //             //_controller.orderlistApi();
      //             return OrderList();
      //           },
      //           itemCount:
      //               _controller.orderModelEntity.value.totalNoItems != null
      //                   ? (int.parse(_controller
      //                               .orderModelEntity.value.totalNoItems!) /
      //                           10)
      //                       .toInt()
      //                   : 1,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
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

  Widget _searchbar(BuildContext context) {
    final OrdersController _controller = Get.find();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(color: Color(0xffdfdfdf))),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search Order',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xffd0d0d0),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
