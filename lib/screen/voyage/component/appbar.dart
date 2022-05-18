// ignore_for_file: non_constant_identifier_names, unnecessary_const

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/screen/voyage/controller/voyage_tabViewCOntroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

//  controller
VoyageController voyageController = Get.find<VoyageController>();

AppBar voyageHistory_appBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    title: Obx(
      () => Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: InkWell(
                onTap: () {
                  voyageController.chaneTabview();
                },
                child: Column(
                  children: [
                    const Text(
                      'Voyage History',
                      style: TextStyle(color: Colors.black),
                    ),
                    Divider(
                      thickness: 2,
                      color: voyageController.tabview.value?Colors.white:Appcolor.lightBlue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: InkWell(
                onTap: () {
                  voyageController.chaneTabview();
                },
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Current Voyage',
                      style: const TextStyle(color: Colors.black),
                    ),
                     Divider(
                      thickness: 2,
                      color:! voyageController.tabview.value?Colors.white:Appcolor.lightBlue,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ], //tabs
      ),
    ),
  );
}
