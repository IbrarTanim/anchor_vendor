// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/NidCard/component/nidbodybackpart.dart';
import 'package:anchor_vendor/screen/NidCard/controller/nidController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'nidbodyfrontpage.dart';

// controller for tabber view
NidController nidController = Get.put(NidController());

Column NidBody() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image(
        width: MediaQuerypage.screenWidth! * 0.3,
        image: AssetImage('assets/ankornid.png'),
      ),
      SizedBox(
        height: MediaQuerypage.screenHeight! * .01,
      ),
      Text(
        'Identification',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Text(
        'Capture and upload your National ID card',
        style: TextStyle(color: Color(0xFFBA9E42), fontSize: 18),
      ),

      ///**
      //*tabver part
      // */
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Obx(
              () => InkWell(
                onTap: () {
                  nidController.changeOperation();
                },
                child: tabpart1(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Obx(
              () => InkWell(
                onTap: () {
                  nidController.changeOperation();
                },
                child: tabpart2(),
              ),
            ),
          ),
        ],
      ),
      // Tabview part
      Obx(
        () => nidController.operation.value ? partone() : parttwo(),
      )
    ],
  );
}

// body items
Column tabpart2() {
  return Column(
    children: [
      Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('assets/grope2.png'),
          ),
        ),
        Text(
          'Upload NID \nBack Side',
          style: TextStyle(fontSize: 16, color: Color(0xFFB1B1B1)),
        ),
      ]),
      Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10),
        child: Divider(
          thickness: 2,
          color:
              !nidController.operation.value ? Color(0xFFBA9E42) : Colors.white,
        ),
      ),
    ],
  );
}

Column tabpart1() {
  return Column(
    children: [
      Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('assets/grope1.png'),
          ),
        ),
        Text(
          'Upload NID \nFont Side',
          style: TextStyle(fontSize: 16, color: Color(0xFFB1B1B1)),
        ),
      ]),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Divider(
          thickness: 2,
          color:
              nidController.operation.value ? Color(0xFFBA9E42) : Colors.white,
        ),
      ),
    ],
  );
}
