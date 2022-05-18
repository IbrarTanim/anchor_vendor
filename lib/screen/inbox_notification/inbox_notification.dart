// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:anchor_vendor/screen/inbox_notification/component/inbox.dart';
import 'package:anchor_vendor/screen/inbox_notification/component/notification.dart';
import 'package:anchor_vendor/screen/inbox_notification/controller/inbox_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Inbox_notification extends StatelessWidget {
  Inbox_notification({Key? key}) : super(key: key);
  static const name = 'Inbox_not9fication';
  // for controlling
  Inbox_notificaton_controller inbox_notificaton_controller =
      Get.put(Inbox_notificaton_controller());
  List widget = [Inbox(), Notfication()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  inbox_notificaton_controller.tabController(0);
                },
                child: Column(children: [
                  Text(
                    "Inbox",
                    style: TextStyle(color: Colors.black),
                  ),
                  Obx(
                    () => Divider(
                      color: inbox_notificaton_controller.tabvalue.value == 0
                          ? Colors.grey
                          : Colors.white,
                      thickness: 2,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  inbox_notificaton_controller.tabController(1);
                },
                child: Column(
                  children: [
                    Text("Notification", style: TextStyle(color: Colors.black)),
                    Obx(
                      () => Divider(
                        color: inbox_notificaton_controller.tabvalue.value == 1
                            ? Colors.grey
                            : Colors.white,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Obx(()=>widget[inbox_notificaton_controller.tabvalue.value]),
    ));
  }
}
