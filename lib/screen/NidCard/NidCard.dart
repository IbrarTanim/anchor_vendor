// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/license/License.dart';
import 'package:flutter/material.dart';
import '../../appbar.dart';
import 'component/NidBody.dart';

class NidCard extends StatelessWidget {
  const NidCard({Key? key}) : super(key: key);
  static const name = 'NidCard';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appbar_back_button(context, 'NID Card'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
        children: [
          NidBody(),
           /*
          next button
          */
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () {
                // add operation which u want
                Navigator.pushNamed(context, License.name);
              },
              child: Container(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! / 16,
                decoration: BoxDecoration(
                  color: Appcolor.lightBlue,
                  //border: Border.all(color: Color(0xFFB1B1B1)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Center(
                    child: Text(
                  'Next',
                  style: Textstyle.botton,
                )),
              ),
            ),
          ),
          /*
          // Skif button
          */
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () {
                // add operation which u want
                Navigator.pushNamed(context, License.name);
              },
              child: Container(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! / 16,
                decoration: BoxDecoration(
                  color: Appcolor.lightBlue,
                  //border: Border.all(color: Color(0xFFB1B1B1)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Center(
                    child: Text(
                  'Skip',
                  style: Textstyle.botton,
                )),
              ),
            ),
          ),
        ],
          ),
        ),
      ),
    ));
  }
}
