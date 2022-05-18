// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';

AppBar voyage_specification_appbar(BuildContext context) {
  return AppBar(
    leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, color: Colors.black)),
    elevation: 1.0,
    backgroundColor: Colors.white,
    title: Text(
      'Voyage #374328',
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Appcolor.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          width: MediaQuerypage.screenWidth! * 0.2,
          height: MediaQuerypage.screenHeight! ,
          child: Center(
            child: Text(
              'CANCEL',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ],
  );
}
