// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

// cotroller for changeing view

BottomNavigationBar newDashboard_bottomNavigationbar() {
  return BottomNavigationBar(
    onTap: (value) {
      // alLhomeItem.botton_navigaton_index.value = value;
    },
    // currentIndex: alLhomeItem.botton_navigaton_index.value,
    items: const <BottomNavigationBarItem>[
      // BottomNavigationBarItem(
      //   icon: ImageIcon(AssetImage('assets/iconhome.png'),
      //       color: Color(0xFFBA9E42)),
      //   label: '',
      // ),
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
