// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, must_be_immutable

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Inbox/Messageingui.dart';
import 'package:anchor_vendor/screen/notification/controller/inbox_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class Inbox extends StatelessWidget {
  Inbox({Key? key}) : super(key: key);
  static const name = 'Inbox';
  Inbox_notificaton_controller inbox_notificaton_controller =
      Get.put(Inbox_notificaton_controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 1,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                'Chats',
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.notification_add,
                    color: Appcolor.lightBlue,
                  ),
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Appcolor.textfieldfillcolor,
                        filled: true,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search,
                            size: 16, color: Appcolor.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.03,
                  ),
                  Expanded(
                      child: ListView.separated(
                          itemCount: 20,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(),
                          itemBuilder: (context, index) {
                            return Obx(() => ListTile(
                                  selected: inbox_notificaton_controller
                                      .list_selected.value,
                                  onLongPress: inbox_notificaton_controller
                                      .onLongPress(),
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Messageingui.name);
                                  },
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage('assets/dp_client.png'),
                                  ),
                                  title: Text(
                                    'Jennifer Smith',
                                    style: TextStyle(
                                        color: inbox_notificaton_controller
                                            .Itemcolor()),
                                  ),
                                  subtitle: Text(
                                    'It is a long established fact that a reader...',
                                    style: TextStyle(
                                        color: inbox_notificaton_controller
                                            .Itemcolor()),
                                  ),
                                  trailing: Column(children: [
                                    Text(
                                      '23m',
                                      style: TextStyle(
                                          color: inbox_notificaton_controller
                                              .Itemcolor()),
                                    ),
                                    Container(
                                        height:
                                            MediaQuerypage.screenHeight! * 0.03,
                                        width:
                                            MediaQuerypage.screenWidth! * 0.05,
                                        decoration: BoxDecoration(
                                          color: Appcolor.lightBlue,
                                          borderRadius:
                                              BorderRadius.circular(30.5),
                                        ),
                                        child: Center(
                                            child: Text(
                                          '2',
                                          style: TextStyle(
                                              color:
                                                  inbox_notificaton_controller
                                                      .Itemcolor()),
                                        ))),
                                  ]),
                                ));
                          })),
                ],
              ),
            )));
  }
}
