// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

Drawer match_drower() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
          ),
          accountEmail: Text('jane.doe@example.com'),
          accountName: Text(
            'Jane Doe',
            style: TextStyle(fontSize: 24.0),
          ),
          decoration: BoxDecoration(
            color: Appcolor.lightBlue,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.person,
            color: Appcolor.lightBlue,
          ),
          title: Text(
            'Profile',
            style: Textstyle.header2,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.notifications_active,
            color: Appcolor.lightBlue,
          ),
          title: Text(
            'Notification',
            style: Textstyle.header2,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.textsms,
            color: Appcolor.lightBlue,
          ),
          title: Text(
            'Chat',
            style: Textstyle.header2,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: Appcolor.lightBlue,
          ),
          title: Text(
            'Logout',
            style: Textstyle.header2,
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}
