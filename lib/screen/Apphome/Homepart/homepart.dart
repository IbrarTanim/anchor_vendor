// ignore_for_file: prefer_const_constructors

import 'package:anchor_vendor/screen/Apphome/Homepart/component/Shipitem.dart';
import 'package:anchor_vendor/screen/Apphome/Homepart/component/appbar.dart';
import 'package:anchor_vendor/screen/Apphome/component/dashboard_button.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../media_query.dart';

Scaffold home(BuildContext context) {
  return Scaffold(
    appBar: appbar(),
    body: SlidingUpPanel(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.0),
        topRight: Radius.circular(15.0),
      ),
      minHeight: MediaQuerypage.screenHeight! * 0.04,
      maxHeight: MediaQuerypage.screenHeight! * 0.5,
      padding: const EdgeInsets.all(8.0),
      panel: Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Icon(
              Icons.maximize,
              color: Colors.grey,
              size: 90,
            ),
          ),
          body: Shipitem(context)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: dashboardbutton(context),
            ),
          ],
        ),
      ),
    ),
  );
}
