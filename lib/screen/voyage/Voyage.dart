// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable, file_names

import 'package:anchor_vendor/screen/voyage/controller/voyage_tabViewCOntroller.dart';
import 'package:anchor_vendor/screen/voyage/voyage_specification.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'component/appbar.dart';
import 'component/bottonNaviagtionVoyage.dart';
import 'component/voyage_current.dart';
import 'component/voyage_hostory.dart';

class Voyage extends StatelessWidget {
  Voyage({Key? key}) : super(key: key);
  static const name = 'voyage history';
  List widget = [vogaye_history(), vogaye_current()];
  VoyageController voyageController = Get.put(VoyageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: voyageHistory_appBar(),
      body: Obx(()=>widget[voyageController.tabview.value?1:0]),
      bottomNavigationBar: bottomNavigationbar(),
      floatingActionButton: FloatingActionButton(
          child: Image(image: AssetImage('assets/Path 18.png')),
          backgroundColor: Colors.white,
          onPressed: () {
            // 
            Navigator.pushNamed(context, ShipInfo.name);
          },
        ),
    ));
  }
}
