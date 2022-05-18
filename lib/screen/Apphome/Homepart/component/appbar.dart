// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';

AppBar appbar() {
  var textStylewhite = TextStyle(
    color: Colors.white,
  );
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Appcolor.lightBlue,
    bottom: PreferredSize(
      preferredSize: Size(
        MediaQuerypage.screenWidth!,
        MediaQuerypage.screenHeight! * 0.15,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('Dashboard', style: Textstyle.dashboardheader),
                    Text('24 December, 2021', style: textStylewhite),
                  ],
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/dp.png'),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Balance', style: textStylewhite),
                        Text('BDT ${'ssss'}', style: Textstyle.dashboardheader)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Voyage on route', style: textStylewhite),
                        Text('${'3'}', style: Textstyle.dashboardheader)
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Voyage on pending', style: textStylewhite),
                      Text('${'4'}', style: Textstyle.dashboardheader)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
