// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Inbox/inbox.dart';
import 'package:anchor_vendor/screen/notification/notification.dart';
import 'package:anchor_vendor/screen/setting/settingui.dart';
import 'package:anchor_vendor/screen/userInfromation/UserInformation.dart';
import 'package:flutter/material.dart';

ListView HomeView(BuildContext context) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuerypage.safeBlockHorizontal! * 5),
        height: MediaQuerypage.screenHeight! * 0.3,
        color: Appcolor.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  radius: MediaQuerypage.screenWidth! * 0.15,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),

                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuerypage.screenWidth! * 0.1,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Jane Doe',
                        style:
                            TextStyle(fontSize: MediaQuerypage.fontsize! * 32),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuerypage.safeBlockVertical!),
                        child: Text('Profile Compile'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'Balance or Due Tk. 5678/-',
              style: TextStyle(fontSize: MediaQuerypage.fontsize! * 20),
            ),
            Text(
              'Business Profile',
              style: TextStyle(fontSize: MediaQuerypage.fontsize! * 20),
            ),
            Text(
              'Promo Code',
              style: TextStyle(fontSize: MediaQuerypage.fontsize! * 20),
            ),
          ],
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
        onTap: () {
          Navigator.pushNamed(context, UserInformation.name);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: Appcolor.lightBlue,
        ),
        title: Text(
          'Setting',
          style: Textstyle.header2,
        ),
        onTap: () {
          Navigator.pushNamed(context, SettingUi.name);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.textsms,
          color: Appcolor.lightBlue,
        ),
        title: Text(
          'Inbox',
          style: Textstyle.header2,
        ),
        onTap: () {
          Navigator.pushNamed(context, Inbox.name);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.notifications,
          color: Appcolor.lightBlue,
        ),
        title: Text(
          'Notification',
          style: Textstyle.header2,
        ),
        onTap: () {
          Navigator.pushNamed(context, NotificationUI.name);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.pest_control,
          color: Appcolor.lightBlue,
        ),
        title: Text(
          'Terms & Conditions/Privacy',
          style: Textstyle.header2,
        ),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.info,
          color: Appcolor.lightBlue,
        ),
        title: Text(
          'Help',
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
  );
}
