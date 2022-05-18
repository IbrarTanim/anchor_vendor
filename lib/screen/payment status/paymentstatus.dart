// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:flutter/material.dart';


class PaymentStatus extends StatelessWidget {
  const PaymentStatus({Key? key}) : super(key: key);
  static const name = 'PaymentStatus';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            automaticallyImplyLeading: false,
            backgroundColor: Appcolor.lightBlue,
            title: TabBar(
              tabs: const [
                Tab(
                  text: "Due",
                ),
                Tab(
                  text: "Paid",
                ),
              ],
            ),
          ),
          body: TabBarView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(child: Text('Due')),
              Center(child: Text('Paid')),
            ],
          ),
        )));
  }
}
