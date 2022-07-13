import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:winemonger/features/order/create_order/wholesalecreate/wholesale_create_screen.dart';

class CreateOrderList extends StatefulWidget {
  CreateOrderList({Key? key}) : super(key: key);

  @override
  State<CreateOrderList> createState() => _CreateOrderListState();
}

class _CreateOrderListState extends State<CreateOrderList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 0),
        child: DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 45),
                child: Material(
                  color: Colors.white10,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 51, 50, 50), width: 1),
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      labelPadding: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      indicator: BoxDecoration(
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 0.2, //extend the shadow
                            offset: Offset(
                              0.1, // Move to right 10  horizontally
                              0.1, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                        color: Color(0xffcae3a8),
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Text("Leads",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text("Wholesale",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text("Retail",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      child: Center(child: Text('Coming soon')),
                    ),
                    WholeSaleCreateOrderList(),
                    Container(
                      child: Center(child: Text('Coming soon')),
                    ),
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
