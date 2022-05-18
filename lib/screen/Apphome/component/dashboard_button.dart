// ignore_for_file: prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:flutter/material.dart';
import '../../../media_query.dart';

dashboardbutton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Column(
      children: [
        InkWell(
          onTap: () {
            // add operation
          },
          child: Container(
            width: MediaQuerypage.screenWidth,
            height: MediaQuerypage.screenHeight! / 16,
            decoration: BoxDecoration(
              color: Appcolor.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Center(
                child: Text(
              'Match a voyage',
              style: Textstyle.botton,
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: InkWell(
            onTap: () {
              // add operation which u want
            },
            child: Container(
              width: MediaQuerypage.screenWidth,
              height: MediaQuerypage.screenHeight! / 16,
              decoration: BoxDecoration(
                color: Color(0xFFBA9E42),
                //border: Border.all(color: Color(0xFFB1B1B1)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Center(
                  child: Text(
                'Add a new ship',
                style: Textstyle.botton,
              )),
            ),
          ),
        ),
      ],
    ),
  );
}
