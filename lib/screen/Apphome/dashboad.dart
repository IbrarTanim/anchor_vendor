// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, must_be_immutable, unused_local_variable

import 'package:anchor_vendor/screen/Apphome/controller/allhomecontoller.dart';
import 'package:anchor_vendor/screen/Match%20voyage/matchVoyage.dart';
import 'package:anchor_vendor/screen/userInfromation/UserInformation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'Homepart/homepart.dart';
import 'component/dashboard_bottonNavigatio.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  static const name = 'dashboard';
  // variable
  ALLhomeItem alLhomeItem = Get.put(ALLhomeItem());

  @override
  Widget build(BuildContext context) {
    List HomeView_Part = [
      home(context),
      home(context),
      home(context),
      Match_voyage(context),
      UserInformation()
    ];

    return SafeArea(
      child: Scaffold(
        //appBar: ,
        body:
            Obx(() => HomeView_Part[alLhomeItem.botton_navigaton_index.value]),
        bottomNavigationBar: Dashboard_bottomNavigationbar(),
      ),
    );
  }
}
