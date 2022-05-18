
// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Inbox_notificaton_controller extends GetxController {
  RxBool list_selected = false.obs;
  RxInt tabvalue = 0.obs;
  tabController(int value) {
    tabvalue.value = value;
  }

  onLongPress() {
    if (list_selected.value) {
      Itemcolor();
      //list_selected.value=false;
    } else {
      Itemcolor();
      //list_selected.value=true;
    }
  }

  Color Itemcolor() => list_selected.value ? Colors.white : Colors.black;
}
