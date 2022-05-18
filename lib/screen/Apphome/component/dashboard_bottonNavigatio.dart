// ignore_for_file: non_constant_identifier_names, file_names

import 'package:anchor_vendor/screen/Apphome/controller/allhomecontoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

// cotroller for changeing view
ALLhomeItem alLhomeItem = Get.find<ALLhomeItem>();
BottomNavigationBar Dashboard_bottomNavigationbar() {
  return BottomNavigationBar(
    onTap: (value) {
      alLhomeItem.botton_navigaton_index.value = value;
    },
    currentIndex: alLhomeItem.botton_navigaton_index.value,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/iconhome.png'),
            color: Color(0xFFBA9E42)),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/iconmessage.png'),
            color: Color(0xFFBA9E42)),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/iconship.png'),
            color: Color(0xFFBA9E42)),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/iconother.png'),
            color: Color(0xFFBA9E42)),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/iconuser.png'),
            color: Color(0xFFBA9E42)),
        label: '',
      ),
    ],
  );
}
